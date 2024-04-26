-- Visualizing the data available.

select *
from PortfolioProject..Nashville_Housing
order by [UniqueID ];

/*
Output (first 20 rows):

| UniqueID | ParcelID         | LandUse           | PropertyAddress                        | SaleDate                | SalePrice | LegalReference   | SoldAsVacant | OwnerName                                       | OwnerAddress                          | Acreage | TaxDistrict             | LandValue | BuildingValue | TotalValue | YearBuilt | Bedrooms | FullBath | HalfBath |
| -------- | ---------------- | ----------------- | -------------------------------------- | ----------------------- | --------- | ---------------- | ------------ | ----------------------------------------------- | ------------------------------------- | ------- | ----------------------- | --------- | ------------- | ---------- | --------- | -------- | -------- | -------- |
| 0        | 105 03 0D 008.00 | RESIDENTIAL CONDO | 1208  3RD AVE S, NASHVILLE             | 2013-01-24 00:00:00.000 | 132000    | 20130128-0008725 | No           | NULL                                            | NULL                                  | NULL    | NULL                    | NULL      | NULL          | NULL       | NULL      | NULL     | NULL     | NULL     |
| 1        | 105 11 0 080.00  | SINGLE FAMILY     | 1802  STEWART PL, NASHVILLE            | 2013-01-11 00:00:00.000 | 191500    | 20130118-0006337 | No           | STINSON, LAURA M.                               | 1802  STEWART PL, NASHVILLE, TN       | 0.17    | URBAN SERVICES DISTRICT | 32000     | 134400        | 168300     | 1941      | 2        | 1        | 0        |
| 2        | 118 03 0 130.00  | SINGLE FAMILY     | 2761  ROSEDALE PL, NASHVILLE           | 2013-01-18 00:00:00.000 | 202000    | 20130124-0008033 | No           | NUNES, JARED R.                                 | 2761  ROSEDALE PL, NASHVILLE, TN      | 0.11    | CITY OF BERRY HILL      | 34000     | 157800        | 191800     | 2000      | 3        | 2        | 1        |
| 3        | 119 01 0 479.00  | SINGLE FAMILY     | 224  PEACHTREE ST, NASHVILLE           | 2013-01-18 00:00:00.000 | 32000     | 20130128-0008863 | No           | WHITFORD, KAREN                                 | 224  PEACHTREE ST, NASHVILLE, TN      | 0.17    | URBAN SERVICES DISTRICT | 25000     | 243700        | 268700     | 1948      | 4        | 2        | 0        |
| 4        | 119 05 0 186.00  | SINGLE FAMILY     | 316  LUTIE ST, NASHVILLE               | 2013-01-23 00:00:00.000 | 102000    | 20130131-0009929 | No           | HENDERSON, JAMES P. & LYNN P.                   | 316  LUTIE ST, NASHVILLE, TN          | 0.34    | URBAN SERVICES DISTRICT | 25000     | 138100        | 164800     | 1910      | 2        | 1        | 0        |
| 5        | 119 05 0 387.00  | SINGLE FAMILY     | 2626  FOSTER AVE, NASHVILLE            | 2013-01-04 00:00:00.000 | 93736     | 20130118-0006110 | No           | MILLER, JORDAN                                  | 2626  FOSTER AVE, NASHVILLE, TN       | 0.17    | URBAN SERVICES DISTRICT | 25000     | 86100         | 113300     | 1945      | 2        | 1        | 0        |
| 6        | 119 10 0A 104.00 | RESIDENTIAL CONDO | 104  PRESCOTT PL, NASHVILLE            | 2013-01-07 00:00:00.000 | 64900     | 20130109-0002881 | No           | NULL                                            | NULL                                  | NULL    | NULL                    | NULL      | NULL          | NULL       | NULL      | NULL     | NULL     | NULL     |
| 7        | 119 13 0 183.00  | SINGLE FAMILY     | 501  MORTON AVE, NASHVILLE             | 2013-01-15 00:00:00.000 | 44000     | 20130115-0004888 | No           | MICKLER, PATRICK L. & LOIS J. & ARNETT, RYAN D. | 501  MORTON AVE, NASHVILLE, TN        | 0.2     | URBAN SERVICES DISTRICT | 16000     | 68100         | 84300      | 1932      | 2        | 1        | 0        |
| 8        | 119 13 0 183.00  | SINGLE FAMILY     | 501  MORTON AVE, NASHVILLE             | 2013-01-25 00:00:00.000 | 49900     | 20130128-0008950 | No           | MICKLER, PATRICK L. & LOIS J. & ARNETT, RYAN D. | 501  MORTON AVE, NASHVILLE, TN        | 0.2     | URBAN SERVICES DISTRICT | 16000     | 68100         | 84300      | 1932      | 2        | 1        | 0        |
| 9        | 119 15 0 158.00  | SINGLE FAMILY     | 113  NEESE DR, NASHVILLE               | 2013-01-09 00:00:00.000 | 25000     | 20130111-0003850 | N            | SONA LAND CO, LLC                               | 113  NEESE DR, NASHVILLE, TN          | 0.4     | URBAN SERVICES DISTRICT | 25000     | 57100         | 88400      | 1945      | 2        | 1        | 0        |
| 10       | 133 07 0 195.00  | SINGLE FAMILY     | 184  WHEELER AVE, NASHVILLE            | 2013-01-18 00:00:00.000 | 90000     | 20130123-0007357 | No           | GEOGHEGAN, SARS ELIZABETH                       | 184  WHEELER AVE, NASHVILLE, TN       | 0.34    | URBAN SERVICES DISTRICT | 25000     | 80100         | 105100     | 1955      | 2        | 1        | 0        |
| 11       | 133 12 0 153.00  | SINGLE FAMILY     | 238  ELYSIAN FIELDS RD, NASHVILLE      | 2013-01-11 00:00:00.000 | 72000     | 20130115-0004796 | No           | ROSS, BRANDON & LUTTRELL, ELLEN J.              | 238  ELYSIAN FIELDS RD, NASHVILLE, TN | 0.23    | URBAN SERVICES DISTRICT | 21500     | 87900         | 109400     | 1968      | 3        | 1        | 1        |
| 12       | 133 12 0 268.00  | SINGLE FAMILY     | 3801  ECKHART DR, NASHVILLE            | 2013-01-04 00:00:00.000 | 120000    | 20130114-0004153 | No           | YODER, BENJAMIN E. & TODD A.                    | 3801  ECKHART DR, NASHVILLE, TN       | 0.29    | URBAN SERVICES DISTRICT | 21500     | 107800        | 129300     | 1978      | 7        | 2        | 0        |
| 13       | 133 14 0 084.00  | VACANT RES LAND   | 4832  CORNING DR, NASHVILLE            | 2013-01-23 00:00:00.000 | 55000     | 20130129-0009135 | No           | F150 LLC                                        | 4832  CORNING DR, NASHVILLE, TN       | 0.41    | URBAN SERVICES DISTRICT | 35500     | 201300        | 236800     | 2013      | 4        | 2        | 1        |
| 14       | 134 13 0 004.00  | SINGLE FAMILY     | 285  PARAGON MILLS RD, NASHVILLE       | 2013-01-18 00:00:00.000 | 115900    | 20130122-0006704 | No           | JACKSON, HOLLY NICOLE                           | 285  PARAGON MILLS RD, NASHVILLE, TN  | 0.25    | URBAN SERVICES DISTRICT | 21500     | 81700         | 103200     | 1960      | 2        | 1        | 1        |
| 15       | 134 13 0 077.00  | SINGLE FAMILY     | 259  EISENHOWER DR, NASHVILLE          | 2013-01-17 00:00:00.000 | 120000    | 20130122-0006935 | No           | DANG, CHI THI-KIM                               | 259  EISENHOWER DR, NASHVILLE, TN     | 0.27    | URBAN SERVICES DISTRICT | 21500     | 92000         | 116300     | 1962      | 4        | 1        | 1        |
| 16       | 146 15 0 123.00  | SINGLE FAMILY     | 5100  OVERTON RD, NASHVILLE            | 2013-01-04 00:00:00.000 | 262500    | 20130108-0002255 | No           | WHITEHEAD, MARY LAUREN                          | 5100  OVERTON RD, NASHVILLE, TN       | 0.35    | URBAN SERVICES DISTRICT | 47000     | 213600        | 269000     | 1955      | 2        | 2        | 0        |
| 17       | 147 03 0B 089.00 | RESIDENTIAL CONDO | 370  WALLACE RD, NASHVILLE             | 2013-01-29 00:00:00.000 | 31416     | 20130129-0009357 | No           | NULL                                            | NULL                                  | NULL    | NULL                    | NULL      | NULL          | NULL       | NULL      | NULL     | NULL     | NULL     |
| 18       | 147 12 0A 109.00 | RESIDENTIAL CONDO | 109  NORTHCREST COMMONS CIR, NASHVILLE | 2013-01-16 00:00:00.000 | 127500    | 20130117-0005497 | No           | NULL                                            | NULL                                  | NULL    | NULL                    | NULL      | NULL          | NULL       | NULL      | NULL     | NULL     | NULL     |
| 19       | 148 01 0 188.00  | DUPLEX            | 281  COMROE RD, NASHVILLE              | 2013-01-31 00:00:00.000 | 112500    | 20130131-0010288 | No           | DOWNEY, OMARI L.                                | 281  COMROE RD, NASHVILLE, TN         | 0.27    | URBAN SERVICES DISTRICT | 28000     | 71100         | 99100      | 1970      | 4        | 2        | 0        |
*/

-- Creating Temp Table to keep the original one unchanged.

drop table if exists #Nashville_Housing_Result;

select *
into #Nashville_Housing_Result
from PortfolioProject..Nashville_Housing;

-- Checking the result.

select *
from #Nashville_Housing_Result
order by [UniqueID ];

/*
Output (first 20 rows):

| UniqueID | ParcelID         | LandUse           | PropertyAddress                        | SaleDate                | SalePrice | LegalReference   | SoldAsVacant | OwnerName                                       | OwnerAddress                          | Acreage | TaxDistrict             | LandValue | BuildingValue | TotalValue | YearBuilt | Bedrooms | FullBath | HalfBath |
| -------- | ---------------- | ----------------- | -------------------------------------- | ----------------------- | --------- | ---------------- | ------------ | ----------------------------------------------- | ------------------------------------- | ------- | ----------------------- | --------- | ------------- | ---------- | --------- | -------- | -------- | -------- |
| 0        | 105 03 0D 008.00 | RESIDENTIAL CONDO | 1208  3RD AVE S, NASHVILLE             | 2013-01-24 00:00:00.000 | 132000    | 20130128-0008725 | No           | NULL                                            | NULL                                  | NULL    | NULL                    | NULL      | NULL          | NULL       | NULL      | NULL     | NULL     | NULL     |
| 1        | 105 11 0 080.00  | SINGLE FAMILY     | 1802  STEWART PL, NASHVILLE            | 2013-01-11 00:00:00.000 | 191500    | 20130118-0006337 | No           | STINSON, LAURA M.                               | 1802  STEWART PL, NASHVILLE, TN       | 0.17    | URBAN SERVICES DISTRICT | 32000     | 134400        | 168300     | 1941      | 2        | 1        | 0        |
| 2        | 118 03 0 130.00  | SINGLE FAMILY     | 2761  ROSEDALE PL, NASHVILLE           | 2013-01-18 00:00:00.000 | 202000    | 20130124-0008033 | No           | NUNES, JARED R.                                 | 2761  ROSEDALE PL, NASHVILLE, TN      | 0.11    | CITY OF BERRY HILL      | 34000     | 157800        | 191800     | 2000      | 3        | 2        | 1        |
| 3        | 119 01 0 479.00  | SINGLE FAMILY     | 224  PEACHTREE ST, NASHVILLE           | 2013-01-18 00:00:00.000 | 32000     | 20130128-0008863 | No           | WHITFORD, KAREN                                 | 224  PEACHTREE ST, NASHVILLE, TN      | 0.17    | URBAN SERVICES DISTRICT | 25000     | 243700        | 268700     | 1948      | 4        | 2        | 0        |
| 4        | 119 05 0 186.00  | SINGLE FAMILY     | 316  LUTIE ST, NASHVILLE               | 2013-01-23 00:00:00.000 | 102000    | 20130131-0009929 | No           | HENDERSON, JAMES P. & LYNN P.                   | 316  LUTIE ST, NASHVILLE, TN          | 0.34    | URBAN SERVICES DISTRICT | 25000     | 138100        | 164800     | 1910      | 2        | 1        | 0        |
| 5        | 119 05 0 387.00  | SINGLE FAMILY     | 2626  FOSTER AVE, NASHVILLE            | 2013-01-04 00:00:00.000 | 93736     | 20130118-0006110 | No           | MILLER, JORDAN                                  | 2626  FOSTER AVE, NASHVILLE, TN       | 0.17    | URBAN SERVICES DISTRICT | 25000     | 86100         | 113300     | 1945      | 2        | 1        | 0        |
| 6        | 119 10 0A 104.00 | RESIDENTIAL CONDO | 104  PRESCOTT PL, NASHVILLE            | 2013-01-07 00:00:00.000 | 64900     | 20130109-0002881 | No           | NULL                                            | NULL                                  | NULL    | NULL                    | NULL      | NULL          | NULL       | NULL      | NULL     | NULL     | NULL     |
| 7        | 119 13 0 183.00  | SINGLE FAMILY     | 501  MORTON AVE, NASHVILLE             | 2013-01-15 00:00:00.000 | 44000     | 20130115-0004888 | No           | MICKLER, PATRICK L. & LOIS J. & ARNETT, RYAN D. | 501  MORTON AVE, NASHVILLE, TN        | 0.2     | URBAN SERVICES DISTRICT | 16000     | 68100         | 84300      | 1932      | 2        | 1        | 0        |
| 8        | 119 13 0 183.00  | SINGLE FAMILY     | 501  MORTON AVE, NASHVILLE             | 2013-01-25 00:00:00.000 | 49900     | 20130128-0008950 | No           | MICKLER, PATRICK L. & LOIS J. & ARNETT, RYAN D. | 501  MORTON AVE, NASHVILLE, TN        | 0.2     | URBAN SERVICES DISTRICT | 16000     | 68100         | 84300      | 1932      | 2        | 1        | 0        |
| 9        | 119 15 0 158.00  | SINGLE FAMILY     | 113  NEESE DR, NASHVILLE               | 2013-01-09 00:00:00.000 | 25000     | 20130111-0003850 | N            | SONA LAND CO, LLC                               | 113  NEESE DR, NASHVILLE, TN          | 0.4     | URBAN SERVICES DISTRICT | 25000     | 57100         | 88400      | 1945      | 2        | 1        | 0        |
| 10       | 133 07 0 195.00  | SINGLE FAMILY     | 184  WHEELER AVE, NASHVILLE            | 2013-01-18 00:00:00.000 | 90000     | 20130123-0007357 | No           | GEOGHEGAN, SARS ELIZABETH                       | 184  WHEELER AVE, NASHVILLE, TN       | 0.34    | URBAN SERVICES DISTRICT | 25000     | 80100         | 105100     | 1955      | 2        | 1        | 0        |
| 11       | 133 12 0 153.00  | SINGLE FAMILY     | 238  ELYSIAN FIELDS RD, NASHVILLE      | 2013-01-11 00:00:00.000 | 72000     | 20130115-0004796 | No           | ROSS, BRANDON & LUTTRELL, ELLEN J.              | 238  ELYSIAN FIELDS RD, NASHVILLE, TN | 0.23    | URBAN SERVICES DISTRICT | 21500     | 87900         | 109400     | 1968      | 3        | 1        | 1        |
| 12       | 133 12 0 268.00  | SINGLE FAMILY     | 3801  ECKHART DR, NASHVILLE            | 2013-01-04 00:00:00.000 | 120000    | 20130114-0004153 | No           | YODER, BENJAMIN E. & TODD A.                    | 3801  ECKHART DR, NASHVILLE, TN       | 0.29    | URBAN SERVICES DISTRICT | 21500     | 107800        | 129300     | 1978      | 7        | 2        | 0        |
| 13       | 133 14 0 084.00  | VACANT RES LAND   | 4832  CORNING DR, NASHVILLE            | 2013-01-23 00:00:00.000 | 55000     | 20130129-0009135 | No           | F150 LLC                                        | 4832  CORNING DR, NASHVILLE, TN       | 0.41    | URBAN SERVICES DISTRICT | 35500     | 201300        | 236800     | 2013      | 4        | 2        | 1        |
| 14       | 134 13 0 004.00  | SINGLE FAMILY     | 285  PARAGON MILLS RD, NASHVILLE       | 2013-01-18 00:00:00.000 | 115900    | 20130122-0006704 | No           | JACKSON, HOLLY NICOLE                           | 285  PARAGON MILLS RD, NASHVILLE, TN  | 0.25    | URBAN SERVICES DISTRICT | 21500     | 81700         | 103200     | 1960      | 2        | 1        | 1        |
| 15       | 134 13 0 077.00  | SINGLE FAMILY     | 259  EISENHOWER DR, NASHVILLE          | 2013-01-17 00:00:00.000 | 120000    | 20130122-0006935 | No           | DANG, CHI THI-KIM                               | 259  EISENHOWER DR, NASHVILLE, TN     | 0.27    | URBAN SERVICES DISTRICT | 21500     | 92000         | 116300     | 1962      | 4        | 1        | 1        |
| 16       | 146 15 0 123.00  | SINGLE FAMILY     | 5100  OVERTON RD, NASHVILLE            | 2013-01-04 00:00:00.000 | 262500    | 20130108-0002255 | No           | WHITEHEAD, MARY LAUREN                          | 5100  OVERTON RD, NASHVILLE, TN       | 0.35    | URBAN SERVICES DISTRICT | 47000     | 213600        | 269000     | 1955      | 2        | 2        | 0        |
| 17       | 147 03 0B 089.00 | RESIDENTIAL CONDO | 370  WALLACE RD, NASHVILLE             | 2013-01-29 00:00:00.000 | 31416     | 20130129-0009357 | No           | NULL                                            | NULL                                  | NULL    | NULL                    | NULL      | NULL          | NULL       | NULL      | NULL     | NULL     | NULL     |
| 18       | 147 12 0A 109.00 | RESIDENTIAL CONDO | 109  NORTHCREST COMMONS CIR, NASHVILLE | 2013-01-16 00:00:00.000 | 127500    | 20130117-0005497 | No           | NULL                                            | NULL                                  | NULL    | NULL                    | NULL      | NULL          | NULL       | NULL      | NULL     | NULL     | NULL     |
| 19       | 148 01 0 188.00  | DUPLEX            | 281  COMROE RD, NASHVILLE              | 2013-01-31 00:00:00.000 | 112500    | 20130131-0010288 | No           | DOWNEY, OMARI L.                                | 281  COMROE RD, NASHVILLE, TN         | 0.27    | URBAN SERVICES DISTRICT | 28000     | 71100         | 99100      | 1970      | 4        | 2        | 0        |
*/

-- Standardizing the SaleDate column format.

alter table #Nashville_Housing_Result
alter column SaleDate date;

-- Checking the result.

select SaleDate
from #Nashville_Housing_Result;

/*
Output (first 20 rows):

| SaleDate   |
| ---------- |
| 2016-08-05 |
| 2014-10-22 |
| 2013-05-31 |
| 2014-09-19 |
| 2014-08-29 |
| 2013-12-02 |
| 2014-04-17 |
| 2013-07-25 |
| 2014-10-01 |
| 2015-05-26 |
| 2016-06-21 |
| 2013-09-03 |
| 2015-03-02 |
| 2013-12-13 |
| 2015-07-31 |
| 2015-07-22 |
| 2016-03-23 |
| 2016-03-23 |
| 2015-09-25 |
| 2016-10-17 |
*/

-- Populating Property Address data.

update nhr1
set PropertyAddress = isnull(nhr1.PropertyAddress, nhr2.PropertyAddress)
from #Nashville_Housing_Result as nhr1
join #Nashville_Housing_Result as nhr2
	on
		nhr1.ParcelID = nhr2.ParcelID
		and nhr1.[UniqueID ] <> nhr2.[UniqueID ] 
where nhr1.PropertyAddress is null;

-- Checking the result.

select [UniqueID ], ParcelID, PropertyAddress
from #Nashville_Housing_Result
order by ParcelID;

/*
Output (first 20 rows):

| UniqueID | ParcelID         | PropertyAddress                       |
| -------- | ---------------- | ------------------------------------- |
| 2045     | 007 00 0 125.00  | 1808  FOX CHASE DR, GOODLETTSVILLE    |
| 16918    | 007 00 0 130.00  | 1832  FOX CHASE DR, GOODLETTSVILLE    |
| 54582    | 007 00 0 138.00  | 1864 FOX CHASE  DR, GOODLETTSVILLE    |
| 43070    | 007 00 0 143.00  | 1853  FOX CHASE DR, GOODLETTSVILLE    |
| 22714    | 007 00 0 149.00  | 1829  FOX CHASE DR, GOODLETTSVILLE    |
| 18367    | 007 00 0 151.00  | 1821  FOX CHASE DR, GOODLETTSVILLE    |
| 19804    | 007 14 0 002.00  | 2005  SADIE LN, GOODLETTSVILLE        |
| 54583    | 007 14 0 024.00  | 1917 GRACELAND  DR, GOODLETTSVILLE    |
| 36500    | 007 14 0 026.00  | 1428  SPRINGFIELD HWY, GOODLETTSVILLE |
| 19805    | 007 14 0 034.00  | 1420  SPRINGFIELD HWY, GOODLETTSVILLE |
| 29467    | 007 14 0A 024.00 | 2209  KAYLA DR, GOODLETTSVILLE        |
| 10754    | 007 14 0A 027.00 | 109  BAILEY VIEW CT, GOODLETTSVILLE   |
| 34751    | 007 14 0B 010.00 | 1900  TINNIN RD, GOODLETTSVILLE       |
| 4512     | 007 15 0 002.00  | 629  GAYLEMORE DR, GOODLETTSVILLE     |
| 16919    | 007 15 0 003.00  | 633  GAYLEMORE DR, GOODLETTSVILLE     |
| 16920    | 007 15 0 004.00  | 637  GAYLEMORE DR, GOODLETTSVILLE     |
| 51967    | 007 15 0 008.00  | 1976 SADIE  LN, GOODLETTSVILLE        |
| 28155    | 007 15 0 014.00  | 644  GAYLEMORE DR, GOODLETTSVILLE     |
| 8899     | 007 15 0 020.00  | 1921  NORMERLE DR, GOODLETTSVILLE     |
| 4513     | 007 15 0 031.00  | 1916  NORMERLE DR, GOODLETTSVILLE     |
*/

-- Breaking out 'PropertyAddress' into individual columns (Address, City).
-- Use of substring, charindex and len.

alter table #Nashville_Housing_Result
add
	PropertySplitAddress nvarchar(255),
	PropertySplitCity nvarchar(255);
go

update #Nashville_Housing_Result
set
	PropertySplitAddress = substring(PropertyAddress, 1, charindex(',', PropertyAddress)-1),
	PropertySplitCity = substring(PropertyAddress, charindex(',', PropertyAddress)+2, len(PropertyAddress));

-- Checking the result.

select PropertyAddress, PropertySplitAddress, PropertySplitCity
from #Nashville_Housing_Result
order by [UniqueID ];

/*
Output (first 20 rows):

| PropertyAddress                        | PropertySplitAddress        | PropertySplitCity |
| -------------------------------------- | --------------------------- | ----------------- |
| 1208  3RD AVE S, NASHVILLE             | 1208  3RD AVE S             | NASHVILLE         |
| 1802  STEWART PL, NASHVILLE            | 1802  STEWART PL            | NASHVILLE         |
| 2761  ROSEDALE PL, NASHVILLE           | 2761  ROSEDALE PL           | NASHVILLE         |
| 224  PEACHTREE ST, NASHVILLE           | 224  PEACHTREE ST           | NASHVILLE         |
| 316  LUTIE ST, NASHVILLE               | 316  LUTIE ST               | NASHVILLE         |
| 2626  FOSTER AVE, NASHVILLE            | 2626  FOSTER AVE            | NASHVILLE         |
| 104  PRESCOTT PL, NASHVILLE            | 104  PRESCOTT PL            | NASHVILLE         |
| 501  MORTON AVE, NASHVILLE             | 501  MORTON AVE             | NASHVILLE         |
| 501  MORTON AVE, NASHVILLE             | 501  MORTON AVE             | NASHVILLE         |
| 113  NEESE DR, NASHVILLE               | 113  NEESE DR               | NASHVILLE         |
| 184  WHEELER AVE, NASHVILLE            | 184  WHEELER AVE            | NASHVILLE         |
| 238  ELYSIAN FIELDS RD, NASHVILLE      | 238  ELYSIAN FIELDS RD      | NASHVILLE         |
| 3801  ECKHART DR, NASHVILLE            | 3801  ECKHART DR            | NASHVILLE         |
| 4832  CORNING DR, NASHVILLE            | 4832  CORNING DR            | NASHVILLE         |
| 285  PARAGON MILLS RD, NASHVILLE       | 285  PARAGON MILLS RD       | NASHVILLE         |
| 259  EISENHOWER DR, NASHVILLE          | 259  EISENHOWER DR          | NASHVILLE         |
| 5100  OVERTON RD, NASHVILLE            | 5100  OVERTON RD            | NASHVILLE         |
| 370  WALLACE RD, NASHVILLE             | 370  WALLACE RD             | NASHVILLE         |
| 109  NORTHCREST COMMONS CIR, NASHVILLE | 109  NORTHCREST COMMONS CIR | NASHVILLE         |
| 281  COMROE RD, NASHVILLE              | 281  COMROE RD              | NASHVILLE         |
*/

-- Breaking out 'OwnerAddress' into individual columns (Address, City, State).
-- Use of parsename.

alter table #Nashville_Housing_Result
add
	OwnerSplitAddress nvarchar(255),
	OwnerSplitCity nvarchar(255),
	OwnerSplitState nvarchar(255);
go

update #Nashville_Housing_Result
set
	OwnerSplitAddress = parsename(replace(OwnerAddress, ', ','.'), 3),
	OwnerSplitCity = parsename(replace(OwnerAddress, ', ','.'), 2),
	OwnerSplitState = parsename(replace(OwnerAddress, ', ','.'), 1);

-- Checking the result.

select OwnerAddress, OwnerSplitAddress, OwnerSplitCity, OwnerSplitState
from #Nashville_Housing_Result
order by [UniqueID ];

/*
Output (first 20 rows):

| OwnerAddress                          | OwnerSplitAddress      | OwnerSplitCity | OwnerSplitState |
| ------------------------------------- | ---------------------- | -------------- | --------------- |
| NULL                                  | NULL                   | NULL           | NULL            |
| 1802  STEWART PL, NASHVILLE, TN       | 1802  STEWART PL       | NASHVILLE      | TN              |
| 2761  ROSEDALE PL, NASHVILLE, TN      | 2761  ROSEDALE PL      | NASHVILLE      | TN              |
| 224  PEACHTREE ST, NASHVILLE, TN      | 224  PEACHTREE ST      | NASHVILLE      | TN              |
| 316  LUTIE ST, NASHVILLE, TN          | 316  LUTIE ST          | NASHVILLE      | TN              |
| 2626  FOSTER AVE, NASHVILLE, TN       | 2626  FOSTER AVE       | NASHVILLE      | TN              |
| NULL                                  | NULL                   | NULL           | NULL            |
| 501  MORTON AVE, NASHVILLE, TN        | 501  MORTON AVE        | NASHVILLE      | TN              |
| 501  MORTON AVE, NASHVILLE, TN        | 501  MORTON AVE        | NASHVILLE      | TN              |
| 113  NEESE DR, NASHVILLE, TN          | 113  NEESE DR          | NASHVILLE      | TN              |
| 184  WHEELER AVE, NASHVILLE, TN       | 184  WHEELER AVE       | NASHVILLE      | TN              |
| 238  ELYSIAN FIELDS RD, NASHVILLE, TN | 238  ELYSIAN FIELDS RD | NASHVILLE      | TN              |
| 3801  ECKHART DR, NASHVILLE, TN       | 3801  ECKHART DR       | NASHVILLE      | TN              |
| 4832  CORNING DR, NASHVILLE, TN       | 4832  CORNING DR       | NASHVILLE      | TN              |
| 285  PARAGON MILLS RD, NASHVILLE, TN  | 285  PARAGON MILLS RD  | NASHVILLE      | TN              |
| 259  EISENHOWER DR, NASHVILLE, TN     | 259  EISENHOWER DR     | NASHVILLE      | TN              |
| 5100  OVERTON RD, NASHVILLE, TN       | 5100  OVERTON RD       | NASHVILLE      | TN              |
| NULL                                  | NULL                   | NULL           | NULL            |
| NULL                                  | NULL                   | NULL           | NULL            |
| 281  COMROE RD, NASHVILLE, TN         | 281  COMROE RD         | NASHVILLE      | TN              |
*/

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
from #Nashville_Housing_Result;

-- Checking the result.

select distinct(SoldAsVacant), count(SoldAsVacant) as SoldAsVacantCount
from #Nashville_Housing_Result
group by SoldAsVacant;

/*
Output:

| SoldAsVacant | SoldAsVacantCount |
| ------------ | ----------------- |
| Yes          | 4675              |
| No           | 51802             |
*/

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
where RowNumber > 1;

-- Checking the result.
-- The idea of this query is to show only the headers, which will mean that there are no duplicate rows.

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
where RowNumber > 1;

/*
Output:

| UniqueID | ParcelID | LandUse | PropertyAddress | SaleDate | SalePrice | LegalReference | SoldAsVacant | OwnerName | OwnerAddress | Acreage | TaxDistrict | LandValue | BuildingValue | TotalValue | YearBuilt | Bedrooms | FullBath | HalfBath | PropertySplitAddress | PropertySplitCity | OwnerSplitAddress | OwnerSplitCity | OwnerSplitState | RowNumber |
| -------- | -------- | ------- | --------------- | -------- | --------- | -------------- | ------------ | --------- | ------------ | ------- | ----------- | --------- | ------------- | ---------- | --------- | -------- | -------- | -------- | -------------------- | ----------------- | ----------------- | -------------- | --------------- | --------- |
*/

-- Removing unused columns and renaming selected ones.

alter table #Nashville_Housing_Result
drop column PropertyAddress, OwnerAddress;

exec tempdb.sys.sp_rename '#Nashville_Housing_Result.PropertySplitAddress', 'PropertyAddress', 'column'
exec tempdb.sys.sp_rename '#Nashville_Housing_Result.PropertySplitCity', 'PropertyCity', 'column'
exec tempdb.sys.sp_rename '#Nashville_Housing_Result.OwnerSplitAddress', 'OwnerAddress', 'column'
exec tempdb.sys.sp_rename '#Nashville_Housing_Result.OwnerSplitCity', 'OwnerCity', 'column'
exec tempdb.sys.sp_rename '#Nashville_Housing_Result.OwnerSplitState', 'OwnerState', 'column';

-- Checking the result.

select *
from #Nashville_Housing_Result
order by [UniqueID ];

/*
Output (first 20 rows):

| UniqueID | ParcelID         | LandUse           | SaleDate   | SalePrice | LegalReference   | SoldAsVacant | OwnerName                                       | Acreage | TaxDistrict             | LandValue | BuildingValue | TotalValue | YearBuilt | Bedrooms | FullBath | HalfBath | PropertyAddress             | PropertyCity | OwnerAddress           | OwnerCity | OwnerState |
| -------- | ---------------- | ----------------- | ---------- | --------- | ---------------- | ------------ | ----------------------------------------------- | ------- | ----------------------- | --------- | ------------- | ---------- | --------- | -------- | -------- | -------- | --------------------------- | ------------ | ---------------------- | --------- | ---------- |
| 0        | 105 03 0D 008.00 | RESIDENTIAL CONDO | 2013-01-24 | 132000    | 20130128-0008725 | No           | NULL                                            | NULL    | NULL                    | NULL      | NULL          | NULL       | NULL      | NULL     | NULL     | NULL     | 1208  3RD AVE S             | NASHVILLE    | NULL                   | NULL      | NULL       |
| 1        | 105 11 0 080.00  | SINGLE FAMILY     | 2013-01-11 | 191500    | 20130118-0006337 | No           | STINSON, LAURA M.                               | 0.17    | URBAN SERVICES DISTRICT | 32000     | 134400        | 168300     | 1941      | 2        | 1        | 0        | 1802  STEWART PL            | NASHVILLE    | 1802  STEWART PL       | NASHVILLE | TN         |
| 2        | 118 03 0 130.00  | SINGLE FAMILY     | 2013-01-18 | 202000    | 20130124-0008033 | No           | NUNES, JARED R.                                 | 0.11    | CITY OF BERRY HILL      | 34000     | 157800        | 191800     | 2000      | 3        | 2        | 1        | 2761  ROSEDALE PL           | NASHVILLE    | 2761  ROSEDALE PL      | NASHVILLE | TN         |
| 3        | 119 01 0 479.00  | SINGLE FAMILY     | 2013-01-18 | 32000     | 20130128-0008863 | No           | WHITFORD, KAREN                                 | 0.17    | URBAN SERVICES DISTRICT | 25000     | 243700        | 268700     | 1948      | 4        | 2        | 0        | 224  PEACHTREE ST           | NASHVILLE    | 224  PEACHTREE ST      | NASHVILLE | TN         |
| 4        | 119 05 0 186.00  | SINGLE FAMILY     | 2013-01-23 | 102000    | 20130131-0009929 | No           | HENDERSON, JAMES P. & LYNN P.                   | 0.34    | URBAN SERVICES DISTRICT | 25000     | 138100        | 164800     | 1910      | 2        | 1        | 0        | 316  LUTIE ST               | NASHVILLE    | 316  LUTIE ST          | NASHVILLE | TN         |
| 5        | 119 05 0 387.00  | SINGLE FAMILY     | 2013-01-04 | 93736     | 20130118-0006110 | No           | MILLER, JORDAN                                  | 0.17    | URBAN SERVICES DISTRICT | 25000     | 86100         | 113300     | 1945      | 2        | 1        | 0        | 2626  FOSTER AVE            | NASHVILLE    | 2626  FOSTER AVE       | NASHVILLE | TN         |
| 6        | 119 10 0A 104.00 | RESIDENTIAL CONDO | 2013-01-07 | 64900     | 20130109-0002881 | No           | NULL                                            | NULL    | NULL                    | NULL      | NULL          | NULL       | NULL      | NULL     | NULL     | NULL     | 104  PRESCOTT PL            | NASHVILLE    | NULL                   | NULL      | NULL       |
| 7        | 119 13 0 183.00  | SINGLE FAMILY     | 2013-01-15 | 44000     | 20130115-0004888 | No           | MICKLER, PATRICK L. & LOIS J. & ARNETT, RYAN D. | 0.2     | URBAN SERVICES DISTRICT | 16000     | 68100         | 84300      | 1932      | 2        | 1        | 0        | 501  MORTON AVE             | NASHVILLE    | 501  MORTON AVE        | NASHVILLE | TN         |
| 8        | 119 13 0 183.00  | SINGLE FAMILY     | 2013-01-25 | 49900     | 20130128-0008950 | No           | MICKLER, PATRICK L. & LOIS J. & ARNETT, RYAN D. | 0.2     | URBAN SERVICES DISTRICT | 16000     | 68100         | 84300      | 1932      | 2        | 1        | 0        | 501  MORTON AVE             | NASHVILLE    | 501  MORTON AVE        | NASHVILLE | TN         |
| 9        | 119 15 0 158.00  | SINGLE FAMILY     | 2013-01-09 | 25000     | 20130111-0003850 | No           | SONA LAND CO, LLC                               | 0.4     | URBAN SERVICES DISTRICT | 25000     | 57100         | 88400      | 1945      | 2        | 1        | 0        | 113  NEESE DR               | NASHVILLE    | 113  NEESE DR          | NASHVILLE | TN         |
| 10       | 133 07 0 195.00  | SINGLE FAMILY     | 2013-01-18 | 90000     | 20130123-0007357 | No           | GEOGHEGAN, SARS ELIZABETH                       | 0.34    | URBAN SERVICES DISTRICT | 25000     | 80100         | 105100     | 1955      | 2        | 1        | 0        | 184  WHEELER AVE            | NASHVILLE    | 184  WHEELER AVE       | NASHVILLE | TN         |
| 11       | 133 12 0 153.00  | SINGLE FAMILY     | 2013-01-11 | 72000     | 20130115-0004796 | No           | ROSS, BRANDON & LUTTRELL, ELLEN J.              | 0.23    | URBAN SERVICES DISTRICT | 21500     | 87900         | 109400     | 1968      | 3        | 1        | 1        | 238  ELYSIAN FIELDS RD      | NASHVILLE    | 238  ELYSIAN FIELDS RD | NASHVILLE | TN         |
| 12       | 133 12 0 268.00  | SINGLE FAMILY     | 2013-01-04 | 120000    | 20130114-0004153 | No           | YODER, BENJAMIN E. & TODD A.                    | 0.29    | URBAN SERVICES DISTRICT | 21500     | 107800        | 129300     | 1978      | 7        | 2        | 0        | 3801  ECKHART DR            | NASHVILLE    | 3801  ECKHART DR       | NASHVILLE | TN         |
| 13       | 133 14 0 084.00  | VACANT RES LAND   | 2013-01-23 | 55000     | 20130129-0009135 | No           | F150 LLC                                        | 0.41    | URBAN SERVICES DISTRICT | 35500     | 201300        | 236800     | 2013      | 4        | 2        | 1        | 4832  CORNING DR            | NASHVILLE    | 4832  CORNING DR       | NASHVILLE | TN         |
| 14       | 134 13 0 004.00  | SINGLE FAMILY     | 2013-01-18 | 115900    | 20130122-0006704 | No           | JACKSON, HOLLY NICOLE                           | 0.25    | URBAN SERVICES DISTRICT | 21500     | 81700         | 103200     | 1960      | 2        | 1        | 1        | 285  PARAGON MILLS RD       | NASHVILLE    | 285  PARAGON MILLS RD  | NASHVILLE | TN         |
| 15       | 134 13 0 077.00  | SINGLE FAMILY     | 2013-01-17 | 120000    | 20130122-0006935 | No           | DANG, CHI THI-KIM                               | 0.27    | URBAN SERVICES DISTRICT | 21500     | 92000         | 116300     | 1962      | 4        | 1        | 1        | 259  EISENHOWER DR          | NASHVILLE    | 259  EISENHOWER DR     | NASHVILLE | TN         |
| 16       | 146 15 0 123.00  | SINGLE FAMILY     | 2013-01-04 | 262500    | 20130108-0002255 | No           | WHITEHEAD, MARY LAUREN                          | 0.35    | URBAN SERVICES DISTRICT | 47000     | 213600        | 269000     | 1955      | 2        | 2        | 0        | 5100  OVERTON RD            | NASHVILLE    | 5100  OVERTON RD       | NASHVILLE | TN         |
| 17       | 147 03 0B 089.00 | RESIDENTIAL CONDO | 2013-01-29 | 31416     | 20130129-0009357 | No           | NULL                                            | NULL    | NULL                    | NULL      | NULL          | NULL       | NULL      | NULL     | NULL     | NULL     | 370  WALLACE RD             | NASHVILLE    | NULL                   | NULL      | NULL       |
| 18       | 147 12 0A 109.00 | RESIDENTIAL CONDO | 2013-01-16 | 127500    | 20130117-0005497 | No           | NULL                                            | NULL    | NULL                    | NULL      | NULL          | NULL       | NULL      | NULL     | NULL     | NULL     | 109  NORTHCREST COMMONS CIR | NASHVILLE    | NULL                   | NULL      | NULL       |
| 19       | 148 01 0 188.00  | DUPLEX            | 2013-01-31 | 112500    | 20130131-0010288 | No           | DOWNEY, OMARI L.                                | 0.27    | URBAN SERVICES DISTRICT | 28000     | 71100         | 99100      | 1970      | 4        | 2        | 0        | 281  COMROE RD              | NASHVILLE    | 281  COMROE RD         | NASHVILLE | TN         |
*/