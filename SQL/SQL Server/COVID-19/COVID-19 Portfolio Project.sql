-- Visualizing the data available.

select *
from PortfolioProject..COVID_Deaths
where continent is not null
order by 3, 4;

/*
Output (first 20 rows):

| iso_code | continent | location    | date                    | population | total_cases | new_cases | new_cases_smoothed | total_deaths | new_deaths | new_deaths_smoothed | total_cases_per_million | new_cases_per_million | new_cases_smoothed_per_million | total_deaths_per_million | new_deaths_per_million | new_deaths_smoothed_per_million | reproduction_rate | icu_patients | icu_patients_per_million | hosp_patients | hosp_patients_per_million | weekly_icu_admissions | weekly_icu_admissions_per_million | weekly_hosp_admissions | weekly_hosp_admissions_per_million |
| -------- | --------- | ----------- | ----------------------- | ---------- | ----------- | --------- | ------------------ | ------------ | ---------- | ------------------- | ----------------------- | --------------------- | ------------------------------ | ------------------------ | ---------------------- | ------------------------------- | ----------------- | ------------ | ------------------------ | ------------- | ------------------------- | --------------------- | --------------------------------- | ---------------------- | ---------------------------------- |
| AFG      | Asia      | Afghanistan | 2020-01-05 00:00:00.000 | 41128772   | NULL        | 0         | NULL               | NULL         | 0          | NULL                | NULL                    | 0                     | NULL                           | NULL                     | 0                      | NULL                            | NULL              | NULL         | NULL                     | NULL          | NULL                      | NULL                  | NULL                              | NULL                   | NULL                               |
| AFG      | Asia      | Afghanistan | 2020-01-12 00:00:00.000 | 41128772   | NULL        | 0         | NULL               | NULL         | 0          | NULL                | NULL                    | 0                     | NULL                           | NULL                     | 0                      | NULL                            | NULL              | NULL         | NULL                     | NULL          | NULL                      | NULL                  | NULL                              | NULL                   | NULL                               |
| AFG      | Asia      | Afghanistan | 2020-01-19 00:00:00.000 | 41128772   | NULL        | 0         | NULL               | NULL         | 0          | NULL                | NULL                    | 0                     | NULL                           | NULL                     | 0                      | NULL                            | NULL              | NULL         | NULL                     | NULL          | NULL                      | NULL                  | NULL                              | NULL                   | NULL                               |
| AFG      | Asia      | Afghanistan | 2020-01-26 00:00:00.000 | 41128772   | NULL        | 0         | NULL               | NULL         | 0          | NULL                | NULL                    | 0                     | NULL                           | NULL                     | 0                      | NULL                            | NULL              | NULL         | NULL                     | NULL          | NULL                      | NULL                  | NULL                              | NULL                   | NULL                               |
| AFG      | Asia      | Afghanistan | 2020-02-02 00:00:00.000 | 41128772   | NULL        | 0         | NULL               | NULL         | 0          | NULL                | NULL                    | 0                     | NULL                           | NULL                     | 0                      | NULL                            | NULL              | NULL         | NULL                     | NULL          | NULL                      | NULL                  | NULL                              | NULL                   | NULL                               |
| AFG      | Asia      | Afghanistan | 2020-02-09 00:00:00.000 | 41128772   | NULL        | 0         | 0                  | NULL         | 0          | 0                   | NULL                    | 0                     | 0                              | NULL                     | 0                      | 0                               | NULL              | NULL         | NULL                     | NULL          | NULL                      | NULL                  | NULL                              | NULL                   | NULL                               |
| AFG      | Asia      | Afghanistan | 2020-02-16 00:00:00.000 | 41128772   | NULL        | 0         | 0                  | NULL         | 0          | 0                   | NULL                    | 0                     | 0                              | NULL                     | 0                      | 0                               | NULL              | NULL         | NULL                     | NULL          | NULL                      | NULL                  | NULL                              | NULL                   | NULL                               |
| AFG      | Asia      | Afghanistan | 2020-02-23 00:00:00.000 | 41128772   | NULL        | 0         | 0                  | NULL         | 0          | 0                   | NULL                    | 0                     | 0                              | NULL                     | 0                      | 0                               | NULL              | NULL         | NULL                     | NULL          | NULL                      | NULL                  | NULL                              | NULL                   | NULL                               |
| AFG      | Asia      | Afghanistan | 2020-03-01 00:00:00.000 | 41128772   | 1           | 1         | 0.143              | NULL         | 0          | 0                   | 0.024                   | 0.024                 | 0.003                          | NULL                     | 0                      | 0                               | NULL              | NULL         | NULL                     | NULL          | NULL                      | NULL                  | NULL                              | NULL                   | NULL                               |
| AFG      | Asia      | Afghanistan | 2020-03-08 00:00:00.000 | 41128772   | 1           | 0         | 0.143              | NULL         | 0          | 0                   | 0.024                   | 0                     | 0.003                          | NULL                     | 0                      | 0                               | NULL              | NULL         | NULL                     | NULL          | NULL                      | NULL                  | NULL                              | NULL                   | NULL                               |
| AFG      | Asia      | Afghanistan | 2020-03-15 00:00:00.000 | 41128772   | 7           | 6         | 1                  | NULL         | 0          | 0                   | 0.17                    | 0.146                 | 0.024                          | NULL                     | 0                      | 0                               | NULL              | NULL         | NULL                     | NULL          | NULL                      | NULL                  | NULL                              | NULL                   | NULL                               |
| AFG      | Asia      | Afghanistan | 2020-03-22 00:00:00.000 | 41128772   | 24          | 17        | 3.429              | NULL         | 0          | 0                   | 0.584                   | 0.413                 | 0.083                          | NULL                     | 0                      | 0                               | NULL              | NULL         | NULL                     | NULL          | NULL                      | NULL                  | NULL                              | NULL                   | NULL                               |
| AFG      | Asia      | Afghanistan | 2020-03-29 00:00:00.000 | 41128772   | 91          | 67        | 13                 | 2            | 2          | 0.286               | 2.213                   | 1.629                 | 0.316                          | 0.049                    | 0.049                  | 0.007                           | 1.51              | NULL         | NULL                     | NULL          | NULL                      | NULL                  | NULL                              | NULL                   | NULL                               |
| AFG      | Asia      | Afghanistan | 2020-03-30 00:00:00.000 | 41128772   | NULL        | NULL      | NULL               | NULL         | NULL       | NULL                | NULL                    | NULL                  | NULL                           | NULL                     | NULL                   | NULL                            | 1.51              | NULL         | NULL                     | NULL          | NULL                      | NULL                  | NULL                              | NULL                   | NULL                               |
| AFG      | Asia      | Afghanistan | 2020-03-31 00:00:00.000 | 41128772   | NULL        | NULL      | NULL               | NULL         | NULL       | NULL                | NULL                    | NULL                  | NULL                           | NULL                     | NULL                   | NULL                            | 1.52              | NULL         | NULL                     | NULL          | NULL                      | NULL                  | NULL                              | NULL                   | NULL                               |
| AFG      | Asia      | Afghanistan | 2020-04-01 00:00:00.000 | 41128772   | NULL        | NULL      | NULL               | NULL         | NULL       | NULL                | NULL                    | NULL                  | NULL                           | NULL                     | NULL                   | NULL                            | 1.51              | NULL         | NULL                     | NULL          | NULL                      | NULL                  | NULL                              | NULL                   | NULL                               |
| AFG      | Asia      | Afghanistan | 2020-04-02 00:00:00.000 | 41128772   | NULL        | NULL      | NULL               | NULL         | NULL       | NULL                | NULL                    | NULL                  | NULL                           | NULL                     | NULL                   | NULL                            | 1.51              | NULL         | NULL                     | NULL          | NULL                      | NULL                  | NULL                              | NULL                   | NULL                               |
| AFG      | Asia      | Afghanistan | 2020-04-03 00:00:00.000 | 41128772   | NULL        | NULL      | NULL               | NULL         | NULL       | NULL                | NULL                    | NULL                  | NULL                           | NULL                     | NULL                   | NULL                            | 1.5               | NULL         | NULL                     | NULL          | NULL                      | NULL                  | NULL                              | NULL                   | NULL                               |
| AFG      | Asia      | Afghanistan | 2020-04-04 00:00:00.000 | 41128772   | NULL        | NULL      | NULL               | NULL         | NULL       | NULL                | NULL                    | NULL                  | NULL                           | NULL                     | NULL                   | NULL                            | 1.49              | NULL         | NULL                     | NULL          | NULL                      | NULL                  | NULL                              | NULL                   | NULL                               |
| AFG      | Asia      | Afghanistan | 2020-04-05 00:00:00.000 | 41128772   | 274         | 183       | 39.143             | 5            | 3          | 0.714               | 6.662                   | 4.449                 | 0.952                          | 0.122                    | 0.073                  | 0.017                           | 1.49              | NULL         | NULL                     | NULL          | NULL                      | NULL                  | NULL                              | NULL                   | NULL                               |
*/

select *
from PortfolioProject..COVID_Vaccinations
where continent is not null
order by 3, 4;

/*
Output (first 20 rows):

| iso_code | continent | location    | date                    | total_tests | new_tests | total_tests_per_thousand | new_tests_per_thousand | new_tests_smoothed | new_tests_smoothed_per_thousand | positive_rate | tests_per_case | tests_units | total_vaccinations | people_vaccinated | people_fully_vaccinated | total_boosters | new_vaccinations | new_vaccinations_smoothed | total_vaccinations_per_hundred | people_vaccinated_per_hundred | people_fully_vaccinated_per_hundred | total_boosters_per_hundred | new_vaccinations_smoothed_per_million | new_people_vaccinated_smoothed | new_people_vaccinated_smoothed_per_hundred | stringency_index | population_density | median_age | aged_65_older | aged_70_older | gdp_per_capita | extreme_poverty | cardiovasc_death_rate | diabetes_prevalence | female_smokers | male_smokers | handwashing_facilities | hospital_beds_per_thousand | life_expectancy | human_development_index | excess_mortality_cumulative_absolute | excess_mortality_cumulative | excess_mortality | excess_mortality_cumulative_per_million |
| -------- | --------- | ----------- | ----------------------- | ----------- | --------- | ------------------------ | ---------------------- | ------------------ | ------------------------------- | ------------- | -------------- | ----------- | ------------------ | ----------------- | ----------------------- | -------------- | ---------------- | ------------------------- | ------------------------------ | ----------------------------- | ----------------------------------- | -------------------------- | ------------------------------------- | ------------------------------ | ------------------------------------------ | ---------------- | ------------------ | ---------- | ------------- | ------------- | -------------- | --------------- | --------------------- | ------------------- | -------------- | ------------ | ---------------------- | -------------------------- | --------------- | ----------------------- | ------------------------------------ | --------------------------- | ---------------- | --------------------------------------- |
| AFG      | Asia      | Afghanistan | 2020-01-05 00:00:00.000 | NULL        | NULL      | NULL                     | NULL                   | NULL               | NULL                            | NULL          | NULL           | NULL        | NULL               | NULL              | NULL                    | NULL           | NULL             | NULL                      | NULL                           | NULL                          | NULL                                | NULL                       | NULL                                  | NULL                           | NULL                                       | 0                | 54.422             | 18.6       | 2.581         | 1.337         | 1803.987       | NULL            | 597.029               | 9.59                | NULL           | NULL         | 37.746                 | 0.5                        | 64.83           | 0.511                   | NULL                                 | NULL                        | NULL             | NULL                                    |
| AFG      | Asia      | Afghanistan | 2020-01-12 00:00:00.000 | NULL        | NULL      | NULL                     | NULL                   | NULL               | NULL                            | NULL          | NULL           | NULL        | NULL               | NULL              | NULL                    | NULL           | NULL             | NULL                      | NULL                           | NULL                          | NULL                                | NULL                       | NULL                                  | NULL                           | NULL                                       | 0                | 54.422             | 18.6       | 2.581         | 1.337         | 1803.987       | NULL            | 597.029               | 9.59                | NULL           | NULL         | 37.746                 | 0.5                        | 64.83           | 0.511                   | NULL                                 | NULL                        | NULL             | NULL                                    |
| AFG      | Asia      | Afghanistan | 2020-01-19 00:00:00.000 | NULL        | NULL      | NULL                     | NULL                   | NULL               | NULL                            | NULL          | NULL           | NULL        | NULL               | NULL              | NULL                    | NULL           | NULL             | NULL                      | NULL                           | NULL                          | NULL                                | NULL                       | NULL                                  | NULL                           | NULL                                       | 0                | 54.422             | 18.6       | 2.581         | 1.337         | 1803.987       | NULL            | 597.029               | 9.59                | NULL           | NULL         | 37.746                 | 0.5                        | 64.83           | 0.511                   | NULL                                 | NULL                        | NULL             | NULL                                    |
| AFG      | Asia      | Afghanistan | 2020-01-26 00:00:00.000 | NULL        | NULL      | NULL                     | NULL                   | NULL               | NULL                            | NULL          | NULL           | NULL        | NULL               | NULL              | NULL                    | NULL           | NULL             | NULL                      | NULL                           | NULL                          | NULL                                | NULL                       | NULL                                  | NULL                           | NULL                                       | 0                | 54.422             | 18.6       | 2.581         | 1.337         | 1803.987       | NULL            | 597.029               | 9.59                | NULL           | NULL         | 37.746                 | 0.5                        | 64.83           | 0.511                   | NULL                                 | NULL                        | NULL             | NULL                                    |
| AFG      | Asia      | Afghanistan | 2020-02-02 00:00:00.000 | NULL        | NULL      | NULL                     | NULL                   | NULL               | NULL                            | NULL          | NULL           | NULL        | NULL               | NULL              | NULL                    | NULL           | NULL             | NULL                      | NULL                           | NULL                          | NULL                                | NULL                       | NULL                                  | NULL                           | NULL                                       | 0                | 54.422             | 18.6       | 2.581         | 1.337         | 1803.987       | NULL            | 597.029               | 9.59                | NULL           | NULL         | 37.746                 | 0.5                        | 64.83           | 0.511                   | NULL                                 | NULL                        | NULL             | NULL                                    |
| AFG      | Asia      | Afghanistan | 2020-02-09 00:00:00.000 | NULL        | NULL      | NULL                     | NULL                   | NULL               | NULL                            | NULL          | NULL           | NULL        | NULL               | NULL              | NULL                    | NULL           | NULL             | NULL                      | NULL                           | NULL                          | NULL                                | NULL                       | NULL                                  | NULL                           | NULL                                       | 0                | 54.422             | 18.6       | 2.581         | 1.337         | 1803.987       | NULL            | 597.029               | 9.59                | NULL           | NULL         | 37.746                 | 0.5                        | 64.83           | 0.511                   | NULL                                 | NULL                        | NULL             | NULL                                    |
| AFG      | Asia      | Afghanistan | 2020-02-16 00:00:00.000 | NULL        | NULL      | NULL                     | NULL                   | NULL               | NULL                            | NULL          | NULL           | NULL        | NULL               | NULL              | NULL                    | NULL           | NULL             | NULL                      | NULL                           | NULL                          | NULL                                | NULL                       | NULL                                  | NULL                           | NULL                                       | 0                | 54.422             | 18.6       | 2.581         | 1.337         | 1803.987       | NULL            | 597.029               | 9.59                | NULL           | NULL         | 37.746                 | 0.5                        | 64.83           | 0.511                   | NULL                                 | NULL                        | NULL             | NULL                                    |
| AFG      | Asia      | Afghanistan | 2020-02-23 00:00:00.000 | NULL        | NULL      | NULL                     | NULL                   | NULL               | NULL                            | NULL          | NULL           | NULL        | NULL               | NULL              | NULL                    | NULL           | NULL             | NULL                      | NULL                           | NULL                          | NULL                                | NULL                       | NULL                                  | NULL                           | NULL                                       | 8.33             | 54.422             | 18.6       | 2.581         | 1.337         | 1803.987       | NULL            | 597.029               | 9.59                | NULL           | NULL         | 37.746                 | 0.5                        | 64.83           | 0.511                   | NULL                                 | NULL                        | NULL             | NULL                                    |
| AFG      | Asia      | Afghanistan | 2020-03-01 00:00:00.000 | NULL        | NULL      | NULL                     | NULL                   | NULL               | NULL                            | NULL          | NULL           | NULL        | NULL               | NULL              | NULL                    | NULL           | NULL             | NULL                      | NULL                           | NULL                          | NULL                                | NULL                       | NULL                                  | NULL                           | NULL                                       | 27.78            | 54.422             | 18.6       | 2.581         | 1.337         | 1803.987       | NULL            | 597.029               | 9.59                | NULL           | NULL         | 37.746                 | 0.5                        | 64.83           | 0.511                   | NULL                                 | NULL                        | NULL             | NULL                                    |
| AFG      | Asia      | Afghanistan | 2020-03-08 00:00:00.000 | NULL        | NULL      | NULL                     | NULL                   | NULL               | NULL                            | NULL          | NULL           | NULL        | NULL               | NULL              | NULL                    | NULL           | NULL             | NULL                      | NULL                           | NULL                          | NULL                                | NULL                       | NULL                                  | NULL                           | NULL                                       | 27.78            | 54.422             | 18.6       | 2.581         | 1.337         | 1803.987       | NULL            | 597.029               | 9.59                | NULL           | NULL         | 37.746                 | 0.5                        | 64.83           | 0.511                   | NULL                                 | NULL                        | NULL             | NULL                                    |
| AFG      | Asia      | Afghanistan | 2020-03-15 00:00:00.000 | NULL        | NULL      | NULL                     | NULL                   | NULL               | NULL                            | NULL          | NULL           | NULL        | NULL               | NULL              | NULL                    | NULL           | NULL             | NULL                      | NULL                           | NULL                          | NULL                                | NULL                       | NULL                                  | NULL                           | NULL                                       | 38.89            | 54.422             | 18.6       | 2.581         | 1.337         | 1803.987       | NULL            | 597.029               | 9.59                | NULL           | NULL         | 37.746                 | 0.5                        | 64.83           | 0.511                   | NULL                                 | NULL                        | NULL             | NULL                                    |
| AFG      | Asia      | Afghanistan | 2020-03-22 00:00:00.000 | NULL        | NULL      | NULL                     | NULL                   | NULL               | NULL                            | NULL          | NULL           | NULL        | NULL               | NULL              | NULL                    | NULL           | NULL             | NULL                      | NULL                           | NULL                          | NULL                                | NULL                       | NULL                                  | NULL                           | NULL                                       | 41.67            | 54.422             | 18.6       | 2.581         | 1.337         | 1803.987       | NULL            | 597.029               | 9.59                | NULL           | NULL         | 37.746                 | 0.5                        | 64.83           | 0.511                   | NULL                                 | NULL                        | NULL             | NULL                                    |
| AFG      | Asia      | Afghanistan | 2020-03-29 00:00:00.000 | NULL        | NULL      | NULL                     | NULL                   | NULL               | NULL                            | NULL          | NULL           | NULL        | NULL               | NULL              | NULL                    | NULL           | NULL             | NULL                      | NULL                           | NULL                          | NULL                                | NULL                       | NULL                                  | NULL                           | NULL                                       | 67.59            | 54.422             | 18.6       | 2.581         | 1.337         | 1803.987       | NULL            | 597.029               | 9.59                | NULL           | NULL         | 37.746                 | 0.5                        | 64.83           | 0.511                   | NULL                                 | NULL                        | NULL             | NULL                                    |
| AFG      | Asia      | Afghanistan | 2020-03-30 00:00:00.000 | NULL        | NULL      | NULL                     | NULL                   | NULL               | NULL                            | NULL          | NULL           | NULL        | NULL               | NULL              | NULL                    | NULL           | NULL             | NULL                      | NULL                           | NULL                          | NULL                                | NULL                       | NULL                                  | NULL                           | NULL                                       | 67.59            | 54.422             | 18.6       | 2.581         | 1.337         | 1803.987       | NULL            | 597.029               | 9.59                | NULL           | NULL         | 37.746                 | 0.5                        | 64.83           | 0.511                   | NULL                                 | NULL                        | NULL             | NULL                                    |
| AFG      | Asia      | Afghanistan | 2020-03-31 00:00:00.000 | NULL        | NULL      | NULL                     | NULL                   | NULL               | NULL                            | NULL          | NULL           | NULL        | NULL               | NULL              | NULL                    | NULL           | NULL             | NULL                      | NULL                           | NULL                          | NULL                                | NULL                       | NULL                                  | NULL                           | NULL                                       | 67.59            | 54.422             | 18.6       | 2.581         | 1.337         | 1803.987       | NULL            | 597.029               | 9.59                | NULL           | NULL         | 37.746                 | 0.5                        | 64.83           | 0.511                   | NULL                                 | NULL                        | NULL             | NULL                                    |
| AFG      | Asia      | Afghanistan | 2020-04-01 00:00:00.000 | NULL        | NULL      | NULL                     | NULL                   | NULL               | NULL                            | NULL          | NULL           | NULL        | NULL               | NULL              | NULL                    | NULL           | NULL             | NULL                      | NULL                           | NULL                          | NULL                                | NULL                       | NULL                                  | NULL                           | NULL                                       | 67.59            | 54.422             | 18.6       | 2.581         | 1.337         | 1803.987       | NULL            | 597.029               | 9.59                | NULL           | NULL         | 37.746                 | 0.5                        | 64.83           | 0.511                   | NULL                                 | NULL                        | NULL             | NULL                                    |
| AFG      | Asia      | Afghanistan | 2020-04-02 00:00:00.000 | NULL        | NULL      | NULL                     | NULL                   | NULL               | NULL                            | NULL          | NULL           | NULL        | NULL               | NULL              | NULL                    | NULL           | NULL             | NULL                      | NULL                           | NULL                          | NULL                                | NULL                       | NULL                                  | NULL                           | NULL                                       | 67.59            | 54.422             | 18.6       | 2.581         | 1.337         | 1803.987       | NULL            | 597.029               | 9.59                | NULL           | NULL         | 37.746                 | 0.5                        | 64.83           | 0.511                   | NULL                                 | NULL                        | NULL             | NULL                                    |
| AFG      | Asia      | Afghanistan | 2020-04-03 00:00:00.000 | NULL        | NULL      | NULL                     | NULL                   | NULL               | NULL                            | NULL          | NULL           | NULL        | NULL               | NULL              | NULL                    | NULL           | NULL             | NULL                      | NULL                           | NULL                          | NULL                                | NULL                       | NULL                                  | NULL                           | NULL                                       | 67.59            | 54.422             | 18.6       | 2.581         | 1.337         | 1803.987       | NULL            | 597.029               | 9.59                | NULL           | NULL         | 37.746                 | 0.5                        | 64.83           | 0.511                   | NULL                                 | NULL                        | NULL             | NULL                                    |
| AFG      | Asia      | Afghanistan | 2020-04-04 00:00:00.000 | NULL        | NULL      | NULL                     | NULL                   | NULL               | NULL                            | NULL          | NULL           | NULL        | NULL               | NULL              | NULL                    | NULL           | NULL             | NULL                      | NULL                           | NULL                          | NULL                                | NULL                       | NULL                                  | NULL                           | NULL                                       | 67.59            | 54.422             | 18.6       | 2.581         | 1.337         | 1803.987       | NULL            | 597.029               | 9.59                | NULL           | NULL         | 37.746                 | 0.5                        | 64.83           | 0.511                   | NULL                                 | NULL                        | NULL             | NULL                                    |
| AFG      | Asia      | Afghanistan | 2020-04-05 00:00:00.000 | NULL        | NULL      | NULL                     | NULL                   | NULL               | NULL                            | NULL          | NULL           | NULL        | NULL               | NULL              | NULL                    | NULL           | NULL             | NULL                      | NULL                           | NULL                          | NULL                                | NULL                       | NULL                                  | NULL                           | NULL                                       | 78.7             | 54.422             | 18.6       | 2.581         | 1.337         | 1803.987       | NULL            | 597.029               | 9.59                | NULL           | NULL         | 37.746                 | 0.5                        | 64.83           | 0.511                   | NULL                                 | NULL                        | NULL             | NULL                                    |
*/

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
order by 1, convert(varchar, date, 23);

/*
Output (first 20 rows):

| Location    | Date       | Total Cases | New Cases | Total Deaths | Population |
| ----------- | ---------- | ----------- | --------- | ------------ | ---------- |
| Afghanistan | 01/03/2020 | 1           | 1         | 0            | 41,128,772 |
| Afghanistan | 08/03/2020 | 1           | 0         | 0            | 41,128,772 |
| Afghanistan | 15/03/2020 | 7           | 6         | 0            | 41,128,772 |
| Afghanistan | 22/03/2020 | 24          | 17        | 0            | 41,128,772 |
| Afghanistan | 29/03/2020 | 91          | 67        | 2            | 41,128,772 |
| Afghanistan | 05/04/2020 | 274         | 183       | 5            | 41,128,772 |
| Afghanistan | 12/04/2020 | 521         | 247       | 15           | 41,128,772 |
| Afghanistan | 19/04/2020 | 908         | 387       | 30           | 41,128,772 |
| Afghanistan | 26/04/2020 | 1,330       | 422       | 43           | 41,128,772 |
| Afghanistan | 03/05/2020 | 2,171       | 841       | 64           | 41,128,772 |
| Afghanistan | 10/05/2020 | 3,563       | 1,392     | 105          | 41,128,772 |
| Afghanistan | 17/05/2020 | 6,053       | 2,490     | 153          | 41,128,772 |
| Afghanistan | 24/05/2020 | 9,866       | 3,813     | 211          | 41,128,772 |
| Afghanistan | 31/05/2020 | 14,443      | 4,577     | 248          | 41,128,772 |
| Afghanistan | 07/06/2020 | 19,551      | 5,108     | 327          | 41,128,772 |
| Afghanistan | 14/06/2020 | 24,102      | 4,551     | 451          | 41,128,772 |
| Afghanistan | 21/06/2020 | 28,297      | 4,195     | 548          | 41,128,772 |
| Afghanistan | 28/06/2020 | 30,616      | 2,319     | 703          | 41,128,772 |
| Afghanistan | 05/07/2020 | 32,672      | 2,056     | 826          | 41,128,772 |
| Afghanistan | 12/07/2020 | 34,351      | 1,679     | 975          | 41,128,772 |
*/

-- Looking at Total Cases vs Total Deaths.
-- Shows likelihood of dying if you contract COVID in Argentina.

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
order by 1, convert(varchar, date, 23);

/*
Output (first 20 rows):

| Location  | Date       | Total Cases | Total Deaths | Death Percentage |
| --------- | ---------- | ----------- | ------------ | ---------------- |
| Argentina | 08/03/2020 | 22          | 1            | 4.55%            |
| Argentina | 15/03/2020 | 131         | 9            | 6.87%            |
| Argentina | 22/03/2020 | 536         | 20           | 3.73%            |
| Argentina | 29/03/2020 | 1,282       | 70           | 5.46%            |
| Argentina | 05/04/2020 | 2,073       | 131          | 6.32%            |
| Argentina | 12/04/2020 | 2,990       | 205          | 6.86%            |
| Argentina | 19/04/2020 | 4,066       | 279          | 6.86%            |
| Argentina | 26/04/2020 | 5,464       | 411          | 7.52%            |
| Argentina | 03/05/2020 | 6,753       | 526          | 7.79%            |
| Argentina | 10/05/2020 | 8,650       | 646          | 7.47%            |
| Argentina | 17/05/2020 | 11,560      | 790          | 6.83%            |
| Argentina | 24/05/2020 | 16,621      | 1,009        | 6.07%            |
| Argentina | 31/05/2020 | 22,406      | 1,306        | 5.83%            |
| Argentina | 07/06/2020 | 29,703      | 1,664        | 5.60%            |
| Argentina | 14/06/2020 | 40,388      | 2,122        | 5.25%            |
| Argentina | 21/06/2020 | 54,438      | 2,724        | 5.00%            |
| Argentina | 28/06/2020 | 73,445      | 3,500        | 4.77%            |
| Argentina | 05/07/2020 | 93,640      | 4,403        | 4.70%            |
| Argentina | 12/07/2020 | 118,611     | 5,556        | 4.68%            |
| Argentina | 19/07/2020 | 150,183     | 6,930        | 4.61%            |
*/

-- Looking at Total Cases vs Population.
-- Shows what percentage of population got COVID in Argentina.

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
order by 1, convert(varchar, date, 23);

/*
Output (first 20 rows):

| Location  | Date       | Population | Total Cases | Percent Population Infected |
| --------- | ---------- | ---------- | ----------- | --------------------------- |
| Argentina | 08/03/2020 | 45,510,324 | 22          | 0.00%                       |
| Argentina | 15/03/2020 | 45,510,324 | 131         | 0.00%                       |
| Argentina | 22/03/2020 | 45,510,324 | 536         | 0.00%                       |
| Argentina | 29/03/2020 | 45,510,324 | 1,282       | 0.00%                       |
| Argentina | 05/04/2020 | 45,510,324 | 2,073       | 0.00%                       |
| Argentina | 12/04/2020 | 45,510,324 | 2,990       | 0.01%                       |
| Argentina | 19/04/2020 | 45,510,324 | 4,066       | 0.01%                       |
| Argentina | 26/04/2020 | 45,510,324 | 5,464       | 0.01%                       |
| Argentina | 03/05/2020 | 45,510,324 | 6,753       | 0.01%                       |
| Argentina | 10/05/2020 | 45,510,324 | 8,650       | 0.02%                       |
| Argentina | 17/05/2020 | 45,510,324 | 11,560      | 0.03%                       |
| Argentina | 24/05/2020 | 45,510,324 | 16,621      | 0.04%                       |
| Argentina | 31/05/2020 | 45,510,324 | 22,406      | 0.05%                       |
| Argentina | 07/06/2020 | 45,510,324 | 29,703      | 0.07%                       |
| Argentina | 14/06/2020 | 45,510,324 | 40,388      | 0.09%                       |
| Argentina | 21/06/2020 | 45,510,324 | 54,438      | 0.12%                       |
| Argentina | 28/06/2020 | 45,510,324 | 73,445      | 0.16%                       |
| Argentina | 05/07/2020 | 45,510,324 | 93,640      | 0.21%                       |
| Argentina | 12/07/2020 | 45,510,324 | 118,611     | 0.26%                       |
| Argentina | 19/07/2020 | 45,510,324 | 150,183     | 0.33%                       |
*/

-- Looking at Countries ordered by Highest Infection Rate compared to Population.

select 
	location as Location,
	format(population, 'N0') as Population,
	format(isnull(max(total_cases), 0), 'N0') as [Highest Infection Count],
	format(isnull(max(total_cases/population), 0), 'P') as [Percent Population Infected]
from PortfolioProject..COVID_Deaths
where continent is not null
group by location, population
order by max(total_cases/population) desc;

/*
Output (first 20 rows):

| Location                  | Population | Highest Infection Count | Percent Population Infected |
| ------------------------- | ---------- | ----------------------- | --------------------------- |
| San Marino                | 33,690     | 25,292                  | 75.07%                      |
| Cyprus                    | 896,007    | 662,962                 | 73.99%                      |
| Brunei                    | 449,002    | 330,776                 | 73.67%                      |
| Austria                   | 8,939,617  | 6,081,287               | 68.03%                      |
| South Korea               | 51,815,808 | 34,571,873              | 66.72%                      |
| Faeroe Islands            | 53,117     | 34,658                  | 65.25%                      |
| Slovenia                  | 2,119,843  | 1,352,790               | 63.82%                      |
| Gibraltar                 | 32,677     | 20,550                  | 62.89%                      |
| Martinique                | 367,512    | 230,354                 | 62.68%                      |
| Andorra                   | 79,843     | 48,015                  | 60.14%                      |
| Luxembourg                | 647,601    | 389,005                 | 60.07%                      |
| Jersey                    | 110,796    | 66,391                  | 59.92%                      |
| Denmark                   | 5,882,259  | 3,426,405               | 58.25%                      |
| Saint Pierre and Miquelon | 5,885      | 3,426                   | 58.22%                      |
| France                    | 67,813,000 | 38,997,490              | 57.51%                      |
| Iceland                   | 372,903    | 209,650                 | 56.22%                      |
| Guernsey                  | 63,329     | 35,326                  | 55.78%                      |
| Portugal                  | 10,270,857 | 5,637,114               | 54.88%                      |
| Liechtenstein             | 39,355     | 21,558                  | 54.78%                      |
| Greece                    | 10,384,972 | 5,533,964               | 53.29%                      |
*/

-- Showing Countries ordered by Highest Death Count per Population.

select 
	location as Location,
	format(isnull(max(total_deaths), 0), 'N0') as [Total Death Count]
from PortfolioProject..COVID_Deaths
where continent is not null
group by location
order by max(total_deaths) desc;

/*
Output (first 20 rows):

| Location       | Total Death Count |
| -------------- | ----------------- |
| United States  | 1,144,877         |
| Brazil         | 702,116           |
| India          | 533,346           |
| Russia         | 400,967           |
| Mexico         | 334,958           |
| United Kingdom | 232,112           |
| Peru           | 221,583           |
| Italy          | 193,886           |
| Germany        | 174,979           |
| France         | 167,985           |
| Indonesia      | 161,965           |
| Iran           | 146,757           |
| Colombia       | 142,727           |
| Argentina      | 130,687           |
| China          | 121,889           |
| Spain          | 121,852           |
| Poland         | 120,018           |
| Ukraine        | 109,918           |
| South Africa   | 102,595           |
| Turkey         | 101,419           |
*/

-- Showing Total Deaths by Continent.

select 
	continent as Continent,
	format(sum(new_deaths), 'N0') as [Total Death Count]
from PortfolioProject..COVID_Deaths
where continent is not null
group by continent
order by max(total_deaths) desc;

/*
Output:

| Continent     | Total Death Count |
| ------------- | ----------------- |
| North America | 1,604,091         |
| South America | 1,357,711         |
| Asia          | 1,636,049         |
| Europe        | 2,089,911         |
| Africa        | 259,067           |
| Oceania       | 31,211            |
*/

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
order by max(total_deaths) desc;

/*
Output:

| Continent     | Total Death Count |
| ------------- | ----------------- |
| Europe        | 2,089,911         |
| Asia          | 1,635,989         |
| North America | 1,621,477         |
| South America | 1,354,279         |
| Africa        | 259,063           |
| Oceania       | 31,105            |
*/

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
order by sum(TDC) desc;

/*
Output:

| Continent | Total Death Count |
| --------- | ----------------- |
| America   | 2,975,756         |
| Europe    | 2,089,911         |
| Asia      | 1,635,989         |
| Africa    | 259,063           |
| Oceania   | 31,105            |
*/

-- Global Numbers: Deaths and Cases - Analysis by date.

select
	convert(varchar, date, 103) as Date,
	format(sum(new_cases), 'N0') as [Cases per Day],
	format(sum(new_deaths), 'N0') as [Deaths per Day],
	format(sum(new_deaths)/sum(new_cases), 'P') as [Death Percentage]
from PortfolioProject..COVID_Deaths
where
	coalesce(new_cases, new_deaths) is not null
	and continent is not null
group by date
order by convert(varchar, date, 23);

/*
Output (first 20 rows):

| Date       | Cases per Day | Deaths per Day | Death Percentage |
| ---------- | ------------- | -------------- | ---------------- |
| 05/01/2020 | 2             | 3              | 150.00%          |
| 12/01/2020 | 45            | 1              | 2.22%            |
| 19/01/2020 | 90            | 2              | 2.22%            |
| 26/01/2020 | 1,896         | 56             | 2.95%            |
| 02/02/2020 | 12,538        | 310            | 2.47%            |
| 09/02/2020 | 22,985        | 545            | 2.37%            |
| 16/02/2020 | 31,449        | 864            | 2.75%            |
| 23/02/2020 | 9,242         | 690            | 7.47%            |
| 01/03/2020 | 8,267         | 515            | 6.23%            |
| 08/03/2020 | 20,207        | 649            | 3.21%            |
| 15/03/2020 | 60,434        | 2,654          | 4.39%            |
| 22/03/2020 | 171,320       | 9,697          | 5.66%            |
| 29/03/2020 | 351,479       | 22,283         | 6.34%            |
| 05/04/2020 | 466,289       | 36,846         | 7.90%            |
| 12/04/2020 | 524,359       | 47,675         | 9.09%            |
| 19/04/2020 | 507,006       | 49,957         | 9.85%            |
| 26/04/2020 | 540,268       | 44,409         | 8.22%            |
| 03/05/2020 | 545,638       | 41,130         | 7.54%            |
| 10/05/2020 | 581,533       | 38,923         | 6.69%            |
| 17/05/2020 | 610,590       | 36,165         | 5.92%            |
*/

-- Global Numbers: Deaths and Cases - Overall analysis.

select
	format(sum(new_cases), 'N0') as [Total Cases],
	format(sum(new_deaths), 'N0') as [Total Deaths],
	format(sum(new_deaths)/sum(new_cases), 'P') as [Death Percentage]
from PortfolioProject..COVID_Deaths
where continent is not null;

/*
Output:

| Total Cases | Total Deaths | Death Percentage |
| ----------- | ------------ | ---------------- |
| 773,516,722 | 6,978,040    | 0.90%            |
*/

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
order by 2, dte;

/*
Output (first 20 rows):

| Continent | Location    | Date       | Population | New Vaccinations | Total Vaccinations | Population Vaccinated Percentage |
| --------- | ----------- | ---------- | ---------- | ---------------- | ------------------ | -------------------------------- |
| Asia      | Afghanistan | 27/05/2021 | 41,128,772 | 2,859            | 2,859              | 0.01%                            |
| Asia      | Afghanistan | 03/06/2021 | 41,128,772 | 4,015            | 6,874              | 0.02%                            |
| Asia      | Afghanistan | 27/01/2022 | 41,128,772 | 6,868            | 13,742             | 0.03%                            |
| Asia      | Afghanistan | 27/04/2022 | 41,128,772 | 383              | 14,125             | 0.03%                            |
| Asia      | Afghanistan | 12/09/2022 | 41,128,772 | 9,447            | 23,572             | 0.06%                            |
| Asia      | Afghanistan | 02/11/2022 | 41,128,772 | 36,587           | 60,159             | 0.15%                            |
| Asia      | Afghanistan | 16/11/2022 | 41,128,772 | 14,800           | 74,959             | 0.18%                            |
| Asia      | Afghanistan | 25/04/2023 | 41,128,772 | 3,316            | 78,275             | 0.19%                            |
| Europe    | Albania     | 13/01/2021 | 2,842,318  | 60               | 60                 | 0.00%                            |
| Europe    | Albania     | 14/01/2021 | 2,842,318  | 78               | 138                | 0.00%                            |
| Europe    | Albania     | 15/01/2021 | 2,842,318  | 42               | 180                | 0.01%                            |
| Europe    | Albania     | 16/01/2021 | 2,842,318  | 61               | 241                | 0.01%                            |
| Europe    | Albania     | 17/01/2021 | 2,842,318  | 36               | 277                | 0.01%                            |
| Europe    | Albania     | 18/01/2021 | 2,842,318  | 42               | 319                | 0.01%                            |
| Europe    | Albania     | 19/01/2021 | 2,842,318  | 36               | 355                | 0.01%                            |
| Europe    | Albania     | 20/01/2021 | 2,842,318  | 36               | 391                | 0.01%                            |
| Europe    | Albania     | 21/01/2021 | 2,842,318  | 30               | 421                | 0.01%                            |
| Europe    | Albania     | 18/02/2021 | 2,842,318  | 1,348            | 1,769              | 0.06%                            |
| Europe    | Albania     | 19/02/2021 | 2,842,318  | 1,128            | 2,897              | 0.10%                            |
| Europe    | Albania     | 23/03/2021 | 2,842,318  | 3,461            | 6,358              | 0.22%                            |
*/

-- Looking at Total Population vs Vaccinations - Temp Table.

drop table if exists #PercentPopulationVaccinated;

create table #PercentPopulationVaccinated
(
	Continent nvarchar(255),
	Location nvarchar(255),
	dte datetime,
	pop numeric,
	newvac numeric,
	totvac numeric
);

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
	and vac.new_vaccinations > 0;

select
	Continent,
	Location,
	convert(varchar, dte, 103) as Date,
	format(pop, 'N0') as Population,
	format(newvac, 'N0') as [New Vaccinations],
	format(totvac, 'N0') as [Total Vaccinations],
	format(totvac/pop, 'P') as [Population Vaccinated Percentage]
from #PercentPopulationVaccinated
order by 2, dte;

/*
Output (first 20 rows):

| Continent | Location    | Date       | Population | New Vaccinations | Total Vaccinations | Population Vaccinated Percentage |
| --------- | ----------- | ---------- | ---------- | ---------------- | ------------------ | -------------------------------- |
| Asia      | Afghanistan | 27/05/2021 | 41,128,772 | 2,859            | 2,859              | 0.01%                            |
| Asia      | Afghanistan | 03/06/2021 | 41,128,772 | 4,015            | 6,874              | 0.02%                            |
| Asia      | Afghanistan | 27/01/2022 | 41,128,772 | 6,868            | 13,742             | 0.03%                            |
| Asia      | Afghanistan | 27/04/2022 | 41,128,772 | 383              | 14,125             | 0.03%                            |
| Asia      | Afghanistan | 12/09/2022 | 41,128,772 | 9,447            | 23,572             | 0.06%                            |
| Asia      | Afghanistan | 02/11/2022 | 41,128,772 | 36,587           | 60,159             | 0.15%                            |
| Asia      | Afghanistan | 16/11/2022 | 41,128,772 | 14,800           | 74,959             | 0.18%                            |
| Asia      | Afghanistan | 25/04/2023 | 41,128,772 | 3,316            | 78,275             | 0.19%                            |
| Europe    | Albania     | 13/01/2021 | 2,842,318  | 60               | 60                 | 0.00%                            |
| Europe    | Albania     | 14/01/2021 | 2,842,318  | 78               | 138                | 0.00%                            |
| Europe    | Albania     | 15/01/2021 | 2,842,318  | 42               | 180                | 0.01%                            |
| Europe    | Albania     | 16/01/2021 | 2,842,318  | 61               | 241                | 0.01%                            |
| Europe    | Albania     | 17/01/2021 | 2,842,318  | 36               | 277                | 0.01%                            |
| Europe    | Albania     | 18/01/2021 | 2,842,318  | 42               | 319                | 0.01%                            |
| Europe    | Albania     | 19/01/2021 | 2,842,318  | 36               | 355                | 0.01%                            |
| Europe    | Albania     | 20/01/2021 | 2,842,318  | 36               | 391                | 0.01%                            |
| Europe    | Albania     | 21/01/2021 | 2,842,318  | 30               | 421                | 0.01%                            |
| Europe    | Albania     | 18/02/2021 | 2,842,318  | 1,348            | 1,769              | 0.06%                            |
| Europe    | Albania     | 19/02/2021 | 2,842,318  | 1,128            | 2,897              | 0.10%                            |
| Europe    | Albania     | 23/03/2021 | 2,842,318  | 3,461            | 6,358              | 0.22%                            |
*/

-- Creating View to store data for later visualizations.

drop view if exists PercentPopulationVaccinated;
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
	and vac.new_vaccinations > 0;
go

select *
from PercentPopulationVaccinated;

/*
Output (first 20 rows):

| Continent | Location    | Date       | Population | New Vaccinations | Total Vaccinations |
| --------- | ----------- | ---------- | ---------- | ---------------- | ------------------ |
| Asia      | Afghanistan | 27/05/2021 | 41,128,772 | 2,859            | 2,859              |
| Asia      | Afghanistan | 03/06/2021 | 41,128,772 | 4,015            | 6,874              |
| Asia      | Afghanistan | 27/01/2022 | 41,128,772 | 6,868            | 13,742             |
| Asia      | Afghanistan | 27/04/2022 | 41,128,772 | 383              | 14,125             |
| Asia      | Afghanistan | 12/09/2022 | 41,128,772 | 9,447            | 23,572             |
| Asia      | Afghanistan | 02/11/2022 | 41,128,772 | 36,587           | 60,159             |
| Asia      | Afghanistan | 16/11/2022 | 41,128,772 | 14,800           | 74,959             |
| Asia      | Afghanistan | 25/04/2023 | 41,128,772 | 3,316            | 78,275             |
| Europe    | Albania     | 13/01/2021 | 2,842,318  | 60               | 60                 |
| Europe    | Albania     | 14/01/2021 | 2,842,318  | 78               | 138                |
| Europe    | Albania     | 15/01/2021 | 2,842,318  | 42               | 180                |
| Europe    | Albania     | 16/01/2021 | 2,842,318  | 61               | 241                |
| Europe    | Albania     | 17/01/2021 | 2,842,318  | 36               | 277                |
| Europe    | Albania     | 18/01/2021 | 2,842,318  | 42               | 319                |
| Europe    | Albania     | 19/01/2021 | 2,842,318  | 36               | 355                |
| Europe    | Albania     | 20/01/2021 | 2,842,318  | 36               | 391                |
| Europe    | Albania     | 21/01/2021 | 2,842,318  | 30               | 421                |
| Europe    | Albania     | 18/02/2021 | 2,842,318  | 1,348            | 1,769              |
| Europe    | Albania     | 19/02/2021 | 2,842,318  | 1,128            | 2,897              |
| Europe    | Albania     | 23/03/2021 | 2,842,318  | 3,461            | 6,358              |
*/