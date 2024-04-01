-- Visualizing the data available.

select *
from PortfolioProject..Nashville_Housing
go

-- Creating Temp Table to keep the original one unchanged.

drop table if exists #Nashville_Housing_Result

select *
into #Nashville_Housing_Result
from PortfolioProject..Nashville_Housing
go

-- Checking the result.

select *
from #Nashville_Housing_Result
go

-- Standardizing the SaleDate column format.

alter table #Nashville_Housing_Result
alter column SaleDate date
go

-- Checking the result.

select SaleDate
from #Nashville_Housing_Result
go

-- Populating Property Address data.

update nhr1
set PropertyAddress = isnull(nhr1.PropertyAddress, nhr2.PropertyAddress)
from #Nashville_Housing_Result as nhr1
join #Nashville_Housing_Result as nhr2
	on
		nhr1.ParcelID = nhr2.ParcelID
		and nhr1.[UniqueID ] <> nhr2.[UniqueID ] 
where nhr1.PropertyAddress is null
go

-- Checking the result.

select [UniqueID ], ParcelID, PropertyAddress
from #Nashville_Housing_Result
order by ParcelID
go

-- Breaking out 'PropertyAddress' into individual columns (Address, City).
-- Use of substring, charindex and len.

alter table #Nashville_Housing_Result
add
	PropertySplitAddress nvarchar(255),
	PropertySplitCity nvarchar(255)
go

update #Nashville_Housing_Result
set
	PropertySplitAddress = substring(PropertyAddress, 1, charindex(',', PropertyAddress)-1),
	PropertySplitCity = substring(PropertyAddress, charindex(',', PropertyAddress)+2, len(PropertyAddress))
go

-- Checking the result.

select PropertyAddress, PropertySplitAddress, PropertySplitCity
from #Nashville_Housing_Result
go

-- Breaking out 'OwnerAddress' into individual columns (Address, City, State).
-- Use of parsename.

alter table #Nashville_Housing_Result
add
	OwnerSplitAddress nvarchar(255),
	OwnerSplitCity nvarchar(255),
	OwnerSplitState nvarchar(255)
go

update #Nashville_Housing_Result
set
	OwnerSplitAddress = parsename(replace(OwnerAddress, ', ','.'), 3),
	OwnerSplitCity = parsename(replace(OwnerAddress, ', ','.'), 2),
	OwnerSplitState = parsename(replace(OwnerAddress, ', ','.'), 1)
go

-- Checking the result.

select OwnerAddress, OwnerSplitAddress, OwnerSplitCity, OwnerSplitState
from #Nashville_Housing_Result
go

-- Standardizing the 'SoldAsVacant' column.
-- Converting 'Y' to 'Yes' and 'N' to 'No'.

update #Nashville_Housing_Result
set
	SoldAsVacant =
		case
			when SoldAsVacant = 'N' then 'No'
			when SoldAsVacant = 'Y' then 'Yes'
			else SoldAsVacant
		end
from #Nashville_Housing_Result
go

-- Checking the result.

select distinct(SoldAsVacant), count(SoldAsVacant) as SoldAsVacantCount
from #Nashville_Housing_Result
group by SoldAsVacant
go

-- Removing duplicates.

with RowNumCTE as
(
	select
		*,
		row_number() over 
			(
				partition by ParcelID, PropertyAddress, SaleDate, SalePrice, LegalReference
				order by UniqueID
			) as RowNumber
	from #Nashville_Housing_Result
)
delete
from RowNumCTE
where RowNumber > 1
go

-- Checking the result.

with RowNumCTE as
(
	select
		*,
		row_number() over 
			(
				partition by ParcelID, PropertyAddress, SaleDate, SalePrice, LegalReference
				order by UniqueID
			) as RowNumber
	from #Nashville_Housing_Result
)
select *
from RowNumCTE
where RowNumber > 1
go

-- Removing unused columns and renaming selected ones.

alter table #Nashville_Housing_Result
drop column PropertyAddress, OwnerAddress
go

exec tempdb.sys.sp_rename '#Nashville_Housing_Result.PropertySplitAddress', 'PropertyAddress', 'column'
exec tempdb.sys.sp_rename '#Nashville_Housing_Result.PropertySplitCity', 'PropertyCity', 'column'
exec tempdb.sys.sp_rename '#Nashville_Housing_Result.OwnerSplitAddress', 'OwnerAddress', 'column'
exec tempdb.sys.sp_rename '#Nashville_Housing_Result.OwnerSplitCity', 'OwnerCity', 'column'
exec tempdb.sys.sp_rename '#Nashville_Housing_Result.OwnerSplitState', 'OwnerState', 'column'
go

-- Checking the result.

select *
from #Nashville_Housing_Result
go