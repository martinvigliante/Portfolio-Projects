-- Visualizing the data available.

select *
from layoffs;

/*
Output (first 20 rows):

| company       | location      | industry       | total_laid_off | percentage_laid_off | date     | stage    | country        | funds_raised_millions |
| ------------- | ------------- | -------------- | -------------- | ------------------- | -------- | -------- | -------------- | --------------------- |
| Atlassian     | Sydney        | Other          | 500            | 0.05                | 3/6/2023 | Post-IPO | Australia      | 210                   |
| SiriusXM      | New York City | Media          | 475            | 0.08                | 3/6/2023 | Post-IPO | United States  | 525                   |
| Alerzo        | Ibadan        | Retail         | 400            |                     | 3/6/2023 | Series B | Nigeria        | 16                    |
| UpGrad        | Mumbai        | Education      | 120            |                     | 3/6/2023 | Unknown  | India          | 631                   |
| Loft          | Sao Paulo     | Real Estate    | 340            | 0.15                | 3/3/2023 | Unknown  | Brazil         | 788                   |
| Embark Trucks | SF Bay Area   | Transportation | 230            | 0.7                 | 3/3/2023 | Post-IPO | United States  | 317                   |
| Lendi         | Sydney        | Real Estate    | 100            |                     | 3/3/2023 | Unknown  | Australia      | 59                    |
| UserTesting   | SF Bay Area   | Marketing      | 63             |                     | 3/3/2023 | Acquired | United States  | 152                   |
| Airbnb        | SF Bay Area   |                | 30             |                     | 3/3/2023 | Post-IPO | United States  | 6400                  |
| Accolade      | Seattle       | Healthcare     |                |                     | 3/3/2023 | Post-IPO | United States  | 458                   |
| Indigo        | Boston        | Other          |                |                     | 3/3/2023 | Series F | United States. | 1200                  |
| Zscaler       | SF Bay Area   | Security       | 177            | 0.03                | 3/2/2023 | Post-IPO | United States  | 148                   |
| MasterClass   | SF Bay Area   | Education      | 79             |                     | 3/2/2023 | Series E | United States  | 461                   |
| Ambev Tech    | Blumenau      | Food           | 50             |                     | 3/2/2023 | Acquired | Brazil         |                       |
| Fittr         | Pune          | Fitness        | 30             | 0.11                | 3/2/2023 | Series A | India          | 13                    |
| CNET          | SF Bay Area   | Media          | 12             | 0.1                 | 3/2/2023 | Acquired | United States  | 20                    |
| Flipkart      | Bengaluru     | Retail         |                |                     | 3/2/2023 | Acquired | India          | 12900                 |
| Kandela       | Los Angeles   | Consumer       |                | 1                   | 3/2/2023 | Acquired | United States  |                       |
| Truckstop.com | Boise         | Logistics      |                |                     | 3/2/2023 | Acquired | United States  |                       |
| Thoughtworks  | Chicago       | Other          | 500            | 0.04                | 3/1/2023 | Post-IPO | United States  | 748                   |
*/

-- 1) Removing duplicates.

-- A table is created to keep the original unchanged.
-- The row_number function is used to identify the numbers of rows of each group.

drop table if exists layoffs_staging;

create table layoffs_staging
with duplicates_check as (
    select
        *,
        row_number() over (
            partition by
                company,
                location,
                industry,
                total_laid_off,
                percentage_laid_off,
                date,
                stage,
                country,
                funds_raised_millions
        ) as row_num
    from layoffs
)
select *
from duplicates_check
where row_num = 1;

-- Checking the result.

select *
from layoffs_staging
where row_num > 1;

/*
Output:
| company | location | industry | total_laid_off | percentage_laid_off | date | stage | country | funds_raised_millions | row_num |
| ------- | -------- | -------- | -------------- | ------------------- | ---- | ----- | ------- | --------------------- | ------- |
*/

-- The row_num column is dropped.

alter table layoffs_staging
drop column row_num;

-- Checking the result.

select *
from layoffs_staging;

/*
Output (first 20 rows):

| company         | location        | industry       | total_laid_off | percentage_laid_off | date       | stage    | country       | funds_raised_millions |
| --------------- | --------------- | -------------- | -------------- | ------------------- | ---------- | -------- | ------------- | --------------------- |
| E Inc.          | Toronto         | Transportation |                |                     | 12/16/2022 | Post-IPO | Canada        |                       |
| Included Health | SF Bay Area     | Healthcare     |                | 0.06                | 7/25/2022  | Series E | United States | 272                   |
| &Open           | Dublin          | Marketing      | 9              | 0.09                | 11/17/2022 | Series A | Ireland       | 35                    |
| #Paid           | Toronto         | Marketing      | 19             | 0.17                | 1/27/2023  | Series B | Canada        | 21                    |
| 100 Thieves     | Los Angeles     | Consumer       | 12             |                     | 7/13/2022  | Series C | United States | 120                   |
| 100 Thieves     | Los Angeles     | Retail         |                |                     | 1/10/2023  | Series C | United States | 120                   |
| 10X Genomics    | SF Bay Area     | Healthcare     | 100            | 0.08                | 8/4/2022   | Post-IPO | United States | 242                   |
| 1stdibs         | New York City   | Retail         | 70             | 0.17                | 4/2/2020   | Series D | United States | 253                   |
| 2TM             | Sao Paulo       | Crypto         | 90             | 0.12                | 6/1/2022   | Unknown  | Brazil        | 250                   |
| 2TM             | Sao Paulo       | Crypto         | 100            | 0.15                | 9/1/2022   | Unknown  | Brazil        | 250                   |
| 2U              | Washington D.C. | Education      |                | 0.2                 | 7/28/2022  | Post-IPO | United States | 426                   |
| 54gene          | Washington D.C. | Healthcare     | 95             | 0.3                 | 8/29/2022  | Series B | United States | 44                    |
| 5B Solar        | Sydney          | Energy         |                | 0.25                | 6/3/2022   | Series A | Australia     | 12                    |
| 6sense          | SF Bay Area     | Sales          | 150            | 0.1                 | 10/12/2022 | Series E | United States | 426                   |
| 80 Acres Farms  | Cincinnati      | Food           |                | 0.1                 | 1/18/2023  | Unknown  | United States | 275                   |
| 8x8             | SF Bay Area     | Support        | 155            | 0.07                | 1/18/2023  | Post-IPO | United States | 253                   |
| 8x8             | SF Bay Area     | Support        | 200            | 0.09                | 10/4/2022  | Post-IPO | United States | 253                   |
| 98point6        | Seattle         | Healthcare     |                | 0.1                 | 7/21/2022  | Series E | United States | 247                   |
| 99              | Sao Paulo       | Transportation | 75             | 0.02                | 9/20/2022  | Acquired | Brazil        | 244                   |
| Abra            | SF Bay Area     | Crypto         | 12             | 0.05                | 6/30/2022  | Series C | United States | 106                   |
*/

-- 2) Standarizing the data.

-- Removing leading and trailing spaces from the company column.

update layoffs_staging
set company = trim(company);

-- Checking the result.

select distinct company
from layoffs_staging;

/*
Output (first 20 rows):

| company         |
| --------------- |
| E Inc.          |
| Included Health |
| &Open           |
| #Paid           |
| 100 Thieves     |
| 10X Genomics    |
| 1stdibs         |
| 2TM             |
| 2U              |
| 54gene          |
| 5B Solar        |
| 6sense          |
| 80 Acres Farms  |
| 8x8             |
| 98point6        |
| 99              |
| Abra            |
| Absci           |
| Acast           |
| Accolade        |
*/

-- Standardizing the industry column where it contains 'Crypto' or similar.

update layoffs_staging
set industry = 'Crypto'
where industry like 'Crypto%';

-- Checking the result.

select distinct industry
from layoffs_staging
where industry like 'Crypto%';

/*
Output:

| industry |
| -------- |
| Crypto   |
*/

-- Standardizing the country column where it contains 'United States' or similar.

update layoffs_staging
set country = trim(trailing '.' from country)
where country like 'United States%';

-- Checking the result.

select distinct country
from layoffs_staging
where country like 'United States%';

/*
Output:

| country       |
| ------------- |
| United States |
*/

-- Standardizing the date column format.

update layoffs_staging
set date = str_to_date(date, '%m/%d/%Y');

-- Checking the result.

select date
from layoffs_staging
limit 20;

/*
Output (first 20 rows):

| date       |
| ---------- |
| 2022-12-16 |
| 2022-07-25 |
| 2022-11-17 |
| 2023-01-27 |
| 2022-07-13 |
| 2023-01-10 |
| 2022-08-04 |
| 2020-04-02 |
| 2022-06-01 |
| 2022-09-01 |
| 2022-07-28 |
| 2022-08-29 |
| 2022-06-03 |
| 2022-10-12 |
| 2023-01-18 |
| 2023-01-18 |
| 2022-10-04 |
| 2022-07-21 |
| 2022-09-20 |
| 2022-06-30 |
*/

-- Changing the date column data type.

alter table layoffs_staging
modify column date date;

-- Checking the result.

show columns from layoffs_staging like 'date';

/*
Output:

| Field | Type | Null | Key | Default | Extra |
| ----- | ---- | ---- | --- | ------- | ----- |
| date  | date | YES  |     |         | NULL  |
*/

-- 3) Filling in the null or blank values.

-- Populating the null values of the industry column.
-- This will be done if the data is in another row with the same company and location.
-- There may still be some null cells left after the process if no data is found.

update layoffs_staging ls1
join layoffs_staging ls2
    on ls1.company = ls2.company
    and ls1.location = ls2.location
set ls1.industry = ls2.industry
where
    (ls1.industry is null or ls1.industry = '')
    and (ls2.industry is not null and ls2.industry != '');

-- Checking the result.

select
    ls1.company,
    ls1.industry as industry_1,
    ls2.industry as industry_2
from layoffs_staging ls1
join layoffs_staging ls2
    on ls1.company = ls2.company
    and ls1.location = ls2.location
where
    (ls1.industry is null or ls1.industry = '')
    and (ls2.industry is not null and ls2.industry != '');

/*
Output:

| company | industry_1 | industry_2 |
| ------- | ---------- | ---------- |
*/

-- Checking if there are still null values.

select company, industry
from layoffs_staging
where industry is null or industry = '';

/*
Output:

| company             | industry |
| ------------------- | -------- |
| Bally's Interactive |          |
*/

-- 4) Eliminating unnecessary rows.

-- Removing rows where total_laid_off and percentage_laid_off are null.

delete from layoffs_staging
where
    total_laid_off is null
    and percentage_laid_off is null;

-- Checking the result.

select total_laid_off, percentage_laid_off
from layoffs_staging
where
    total_laid_off is null
    and percentage_laid_off is null;

/*
Output:

| total_laid_off | percentage_laid_off |
| -------------- | ------------------- |
*/

-- Checking the final table.

select *
from layoffs_staging;

/*
Output (first 20 rows):

| company         | location        | industry       | total_laid_off | percentage_laid_off | date       | stage    | country       | funds_raised_millions |
| --------------- | --------------- | -------------- | -------------- | ------------------- | ---------- | -------- | ------------- | --------------------- |
| Included Health | SF Bay Area     | Healthcare     |                | 0.06                | 2022-07-25 | Series E | United States | 272                   |
| &Open           | Dublin          | Marketing      | 9              | 0.09                | 2022-11-17 | Series A | Ireland       | 35                    |
| #Paid           | Toronto         | Marketing      | 19             | 0.17                | 2023-01-27 | Series B | Canada        | 21                    |
| 100 Thieves     | Los Angeles     | Consumer       | 12             |                     | 2022-07-13 | Series C | United States | 120                   |
| 10X Genomics    | SF Bay Area     | Healthcare     | 100            | 0.08                | 2022-08-04 | Post-IPO | United States | 242                   |
| 1stdibs         | New York City   | Retail         | 70             | 0.17                | 2020-04-02 | Series D | United States | 253                   |
| 2TM             | Sao Paulo       | Crypto         | 90             | 0.12                | 2022-06-01 | Unknown  | Brazil        | 250                   |
| 2TM             | Sao Paulo       | Crypto         | 100            | 0.15                | 2022-09-01 | Unknown  | Brazil        | 250                   |
| 2U              | Washington D.C. | Education      |                | 0.2                 | 2022-07-28 | Post-IPO | United States | 426                   |
| 54gene          | Washington D.C. | Healthcare     | 95             | 0.3                 | 2022-08-29 | Series B | United States | 44                    |
| 5B Solar        | Sydney          | Energy         |                | 0.25                | 2022-06-03 | Series A | Australia     | 12                    |
| 6sense          | SF Bay Area     | Sales          | 150            | 0.1                 | 2022-10-12 | Series E | United States | 426                   |
| 80 Acres Farms  | Cincinnati      | Food           |                | 0.1                 | 2023-01-18 | Unknown  | United States | 275                   |
| 8x8             | SF Bay Area     | Support        | 155            | 0.07                | 2023-01-18 | Post-IPO | United States | 253                   |
| 8x8             | SF Bay Area     | Support        | 200            | 0.09                | 2022-10-04 | Post-IPO | United States | 253                   |
| 98point6        | Seattle         | Healthcare     |                | 0.1                 | 2022-07-21 | Series E | United States | 247                   |
| 99              | Sao Paulo       | Transportation | 75             | 0.02                | 2022-09-20 | Acquired | Brazil        | 244                   |
| Abra            | SF Bay Area     | Crypto         | 12             | 0.05                | 2022-06-30 | Series C | United States | 106                   |
| Absci           | Vancouver       | Healthcare     | 40             |                     | 2022-08-09 | Post-IPO | United States | 237                   |
| Acast           | Stockholm       | Media          | 70             | 0.15                | 2022-09-15 | Post-IPO | Sweden        | 126                   |
*/