-- Visualizing the data available.

select *
from PortfolioProject..COVID_Deaths
where continent is not null
order by 3, 4
go

select *
from PortfolioProject..COVID_Vaccinations
where continent is not null
order by 3, 4
go

-- Selecting the data that I am going to be using.

select
	location as Location,
	convert(varchar, date, 103) as Date,
	format(isnull(total_cases, 0), 'N0') as [Total Cases],
	format(isnull(new_cases, 0), 'N0') as [New Cases],
	format(isnull(total_deaths, 0), 'N0') as [Total Deaths],
	format(population, 'N0') as Population
from PortfolioProject..COVID_Deaths
where
	coalesce(total_cases, total_deaths) is not null
	and continent is not null
order by 1, convert(varchar, date, 23)
go

-- Looking at Total Cases vs Total Deaths.
-- Shows likelihood of dying if you contract COVID in your country.

select
	location as Location,
	convert(varchar, date, 103) as Date,
	format(isnull(total_cases, 0), 'N0') as [Total Cases],
	format(isnull(total_deaths, 0), 'N0') as [Total Deaths],
	case
		when total_cases is null then '-'
		else format(isnull(total_deaths/total_cases, 0), 'P')
	end as [Death Percentage]
from PortfolioProject..COVID_Deaths
where
	coalesce(total_cases, total_deaths) is not null
	and continent is not null
	and location = 'Argentina'
order by 1, convert(varchar, date, 23)
go

-- Looking at Total Cases vs Population.
-- Shows what percentage of population got COVID.

select 
	location as Location,
	convert(varchar, date, 103) as Date,
	format(population, 'N0') as Population,
	format(total_cases, 'N0') as [Total Cases],
	format((total_cases/population), 'P') [Percent Population Infected]
from PortfolioProject..COVID_Deaths
where
	total_cases is not null
	and continent is not null
	and location = 'Argentina'
order by 1, convert(varchar, date, 23)
go

-- Looking at Countries ordered by Highest Infection Rate compared to Population.

select 
	location as Location,
	format(population, 'N0') as Population,
	format(isnull(max(total_cases), 0), 'N0') as [Highest Infection Count],
	format(isnull(max(total_cases/population), 0), 'P') as [Percent Population Infected]
from PortfolioProject..COVID_Deaths
where continent is not null
group by location, population
order by max(total_cases/population) desc
go

-- Showing Countries ordered by Highest Death Count per Population.

select 
	location as Location,
	format(isnull(max(total_deaths), 0), 'N0') as [Total Death Count]
from PortfolioProject..COVID_Deaths
where continent is not null
group by location
order by max(total_deaths) desc
go

-- Showing Total Deaths by Continent.

select 
	continent as Continent,
	format(sum(new_deaths), 'N0') as [Total Death Count]
from PortfolioProject..COVID_Deaths
where continent is not null
group by continent
order by max(total_deaths) desc
go

-- Showing Total Deaths by Continent (more accurate).

select 
	location as Continent,
	format(max(total_deaths), 'N0') as [Total Death Count]
from PortfolioProject..COVID_Deaths
where
	continent is null
	and location not in ('World', 'European Union')
	and location not like '%income'
group by location
order by max(total_deaths) desc
go

-- Same analysis as above, but now unifying the "Americas".

with DeathsPerContinent (Continent, TDC) as
(
	select 
		case
			when location like '%America' then 'America'
			else location
		end,
		max(total_deaths)
	from PortfolioProject..COVID_Deaths
	where
		continent is null
		and location not in ('World', 'European Union')
		and location not like '%income'
	group by location
)
select
	Continent,
	format(sum(TDC), 'N0') as [Total Death Count]
from DeathsPerContinent
group by Continent
order by sum(TDC) desc
go

-- Global Numbers: Deaths and Cases - Analysis by date.

select
	convert(varchar, date, 103) as Date,
	format(sum(new_cases), 'N0') as [Cases per Day],
	format(sum(new_deaths), 'N0') as [Deaths per Day],
	format(sum(new_deaths)/sum(new_cases), 'P') as [Deaths Percentage]
from PortfolioProject..COVID_Deaths
where
	coalesce(new_cases, new_deaths) is not null
	and continent is not null
group by date
order by convert(varchar, date, 23)
go

-- Global Numbers: Deaths and Cases - Overall analysis.

select
	format(sum(new_cases), 'N0') as [Total Cases],
	format(sum(new_deaths), 'N0') as [Total Deaths],
	format(sum(new_deaths)/sum(new_cases), 'P') as [Deaths Percentage]
from PortfolioProject..COVID_Deaths
where continent is not null
go

-- Looking at Total Population vs Vaccinations - CTE.

with PopVsVac (Continent, Location, dte, pop, newvac, totvac) as
(
	select 
		dea.continent,
		dea.location,
		dea.date,
		dea.population,
		isnull(vac.new_vaccinations, 0),
		isnull(sum(vac.new_vaccinations) over (partition by dea.location order by dea.date), 0)
	from PortfolioProject..COVID_Deaths as dea
	join PortfolioProject..COVID_Vaccinations as vac
		on
			dea.location = vac.location
			and dea.date = vac.date
	where
		dea.continent is not null
		and vac.new_vaccinations > 0
)
select
	Continent,
	Location,
	convert(varchar, dte, 103) as Date,
	format(pop, 'N0') as Population,
	format(newvac, 'N0') as [New Vaccinations],
	format(totvac, 'N0') as [Total Vaccinations],
	format(totvac/pop, 'P') as [Population Vaccinated Percentage]
from PopVsVac
order by 2, dte
go

-- Looking at Total Population vs Vaccinations - Temp Table.

drop table if exists #PercentPopulationVaccinated

create table #PercentPopulationVaccinated
(
	Continent nvarchar(255),
	Location nvarchar(255),
	dte datetime,
	pop numeric,
	newvac numeric,
	totvac numeric
)

insert into #PercentPopulationVaccinated
select 
	dea.continent,
	dea.location,
	dea.date,
	dea.population,
	isnull(vac.new_vaccinations, 0),
	isnull(sum(vac.new_vaccinations) over (partition by dea.location order by dea.date), 0)
from PortfolioProject..COVID_Deaths as dea
join PortfolioProject..COVID_Vaccinations as vac
	on
		dea.location = vac.location
		and dea.date = vac.date
where
	dea.continent is not null
	and vac.new_vaccinations > 0

select
	Continent,
	Location,
	convert(varchar, dte, 103) as Date,
	format(pop, 'N0') as Population,
	format(newvac, 'N0') as [New Vaccinations],
	format(totvac, 'N0') as [Total Vaccinations],
	format(totvac/pop, 'P') as [Population Vaccinated Percentage]
from #PercentPopulationVaccinated
order by 2, dte
go

-- Creating View to store data for later visualizations.

drop view if exists PercentPopulationVaccinated
go

create view PercentPopulationVaccinated as
select 
	dea.continent as Continent,
	dea.location as Location,
	convert(varchar, dea.date, 103) as Date,
	format(dea.population, 'N0') as Population,
	format(isnull(vac.new_vaccinations, 0), 'N0') as [New Vaccinations],
	format(isnull(sum(vac.new_vaccinations) over (partition by dea.location order by dea.date), 0), 'N0') as [Total Vaccinations]
from PortfolioProject..COVID_Deaths as dea
join PortfolioProject..COVID_Vaccinations as vac
	on
		dea.location = vac.location
		and dea.date = vac.date
where
	dea.continent is not null
	and vac.new_vaccinations > 0
go

select *
from PercentPopulationVaccinated
go
