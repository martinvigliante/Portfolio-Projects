-- Visualizing the data available.

select *
from job_postings_fact
limit 20;

/*
Output:

| job_id  | company_id | job_title_short      | job_title                                    | job_location                                 | job_via                        | job_schedule_type       | job_work_from_home | search_location           | job_posted_date     | job_no_degree_mention | job_health_insurance | job_country          | salary_rate | salary_year_avg | salary_hour_avg |
| ------- | ---------- | -------------------- | -------------------------------------------- | -------------------------------------------- | ------------------------------ | ----------------------- | ------------------ | ------------------------- | ------------------- | --------------------- | -------------------- | -------------------- | ----------- | --------------- | --------------- |
| 1456067 | 210        | Data Scientist       | Data Scientist                               | Sydney NSW, Australia                        | via SmartRecruiters Job Search | Full-time               |                    | Australia                 | 2023-09-18 01:17:26 |                       |                      | Australia            |             |                 |                 |
| 1456347 | 771557     | Data Analyst         | Civic Data Analyst II                        | Oakland, CA                                  | via Indeed                     | Full-time               |                    | California, United States | 2023-10-03 01:00:57 |                       | 1                    | United States        | year        | 88750.0         |                 |
| 1456458 | 771558     | Data Analyst         | Data Analyst                                 | Melbourne VIC, Australia                     | via LinkedIn                   | Contractor              |                    | Australia                 | 2023-08-15 01:09:56 |                       |                      | Australia            |             |                 |                 |
| 1456552 | 73         | Data Analyst         | :Data Analyst                                | Jersey City, NJ                              | via LinkedIn                   | Full-time               |                    | New York, United States   | 2023-06-06 01:00:05 | 1                     |                      | United States        |             |                 |                 |
| 1456967 | 12752      | Software Engineer    | Software Engineer                            | Bologna, Metropolitan City of Bologna, Italy | via Jobs At Alstom             | Full-time               |                    | Italy                     | 2023-08-06 01:50:04 | 1                     |                      | Italy                |             |                 |                 |
| 1457003 | 771561     | Software Engineer    | Trainee: Software Engineer                   | Denmark                                      | via BeBee Danmark              | Full-time               |                    | Denmark                   | 2023-07-06 01:27:27 | 1                     |                      | Denmark              |             |                 |                 |
| 1457038 | 221649     | Data Analyst         | Data Analyst                                 | Dubai - United Arab Emirates                 | via BeBee                      | Full-time and Part-time |                    | United Arab Emirates      | 2023-09-12 01:22:45 | 1                     |                      | United Arab Emirates |             |                 |                 |
| 1457075 | 16366      | Data Engineer        | Data Engineer H/F                            | Palaiseau, France                            | via Emplois Trabajo.org        | Full-time               |                    | France                    | 2023-03-26 01:38:04 |                       |                      | France               |             |                 |                 |
| 1457269 | 8025       | Senior Data Analyst  | Senior Supply Chain Data Analyst             | Antwerp, Belgium                             | via Indeed                     | Full-time               |                    | Belgium                   | 2023-11-18 01:56:32 | 1                     |                      | Belgium              |             |                 |                 |
| 1457315 | 87972      | Data Scientist       | Data scientist                               | Irvine, CA                                   | via Trabajo.org                | Full-time               |                    | California, United States | 2023-07-23 01:02:47 |                       |                      | United States        |             |                 |                 |
| 1457367 | 6427       | Software Engineer    | Drupal Engineer                              | Malta                                        | via BeBee Malta                | Full-time               |                    | Malta                     | 2023-01-14 02:26:57 |                       |                      | Malta                |             |                 |                 |
| 1457378 | 453        | Senior Data Engineer | Senior Data Engineer - Full-time / Part-time | Anywhere                                     | via Snagajob                   | Full-time               | 1                  | Georgia                   | 2023-08-25 02:06:50 | 1                     | 1                    | United States        |             |                 |                 |
| 1457618 | 33797      | Data Analyst         | Junior Data Analyst                          | Ashburn, VA                                  | via WayUp                      | Full-time               |                    | New York, United States   | 2023-01-01 01:00:04 |                       |                      | United States        |             |                 |                 |
| 1457952 | 28038      | Data Analyst         | Business Data Analyst Intern Apac H/F        | Paris, France                                | via HelloWork                  | Full-time               |                    | France                    | 2023-03-04 01:28:05 |                       |                      | France               |             |                 |                 |
| 1458128 | 1342       | Data Engineer        | Data Engineer I - (R-13551)                  | Mumbai, Maharashtra, India                   | via Startup Jobs               | Full-time               |                    | India                     | 2023-01-05 01:34:44 |                       |                      | India                |             |                 |                 |
| 1458281 | 27572      | Software Engineer    | Sr Staff/Staff Software Engineer             | Amsterdam, Netherlands                       | via Startup Jobs               | Full-time               |                    | Netherlands               | 2023-04-15 02:15:00 |                       |                      | Netherlands          |             |                 |                 |
| 1458459 | 29610      | Data Analyst         | Data Analyst ID10851                         | Frisco, TX                                   | via WayUp                      | Full-time               |                    | Texas, United States      | 2023-08-23 01:01:48 | 1                     | 1                    | United States        |             |                 |                 |
| 1458920 | 771573     | Business Analyst     | The Robinson                                 | Orlando, FL                                  | via Trabajo.org                | Full-time               |                    | Florida, United States    | 2023-10-28 01:04:35 | 1                     |                      | United States        |             |                 |                 |
| 1459065 | 84686      | Software Engineer    | Software Engineer (Data Products)            | Singapore                                    | via LinkedIn                   | Full-time               |                    | Singapore                 | 2023-01-31 01:25:47 |                       |                      | Singapore            |             |                 |                 |
| 1459241 | 339666     | Data Analyst         | Master Data Analyst                          | Mt Sterling, IL                              | via Indeed                     | Full-time               |                    | Illinois, United States   | 2023-06-22 01:01:48 |                       | 1                    | United States        |             |                 |                 |
*/

select *
from company_dim
limit 20;

/*
Output:

| company_id | name                                         | link                                 | link_google                                                                                                                                     | thumbnail                                                                                         |
| ---------- | -------------------------------------------- | ------------------------------------ | ----------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| 0          | Cryptology                                   |                                      | https://www.google.com/search?sca_esv=568425080&gl=us&hl=en&q=Cryptology&sa=X&ved=0ahUKEwiLv6_v1seBAxUjVTUKHU8NDcEQmJACCL0J                     | https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSasIwLJ4AgJ_x7d19N2iIdiuxJL519GTE6sxjWIeA&s |
| 1          | Edraak                                       |                                      | https://www.google.com/search?hl=en&gl=us&q=Edraak&sa=X&ved=0ahUKEwiQqpejrbiAAxWsFVkFHZnxCLY4ChCYkAII1Ak                                        | https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRy7BDVLI1v0TTiEd_1-A9erQIeLXnbzmstT3FzCrk&s |
| 2          | Groupe ADP                                   | http://www.groupeadp.fr/             | https://www.google.com/search?gl=us&hl=en&q=Groupe+ADP&sa=X&ved=0ahUKEwix4rflpLOAAxVILVkFHaXmB9w4PBCYkAII-As                                    | https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRy7BDVLI1v0TTiEd_1-A9erQIeLXnbzmstT3FzCrk&s |
| 3          | Interactive Resources - iR                   |                                      | https://www.google.com/search?q=Interactive+Resources+-+iR&sa=X&ved=0ahUKEwiRtI28yY_-AhVIMlkFHf_-CWo4WhCYkAIIlQo                                | https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRy51d7d6kARXhB5XkjLXjztfqG6S3R1JAXhxxWMI&s |
| 4          | Cybernetic Search                            |                                      | https://www.google.com/search?gl=us&hl=en&q=Cybernetic+Search&sa=X&ved=0ahUKEwjElfiG-_j9AhXDRzABHcRICk8QmJACCLkJ                                | https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8Py43j7ySQpLYB4yBLsFWk5DYTbdR0z8TguNxdLI&s |
| 5          | SiS Distribution (Thailand) Public Co., Ltd. | http://www.sisthai.com/              | https://www.google.com/search?hl=en&gl=us&q=SiS+Distribution+(Thailand)+Public+Co.,+Ltd.&sa=X&ved=0ahUKEwiL54vM0u78AhXCkGoFHUtyDpkQmJACCJYL     | https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT792SaCQ9Hku1yCxsVbP-WZzx30zbMKz7xlJEI&s=0  |
| 6          | FullStack Labs                               | http://www.fullstacklabs.co/         | https://www.google.com/search?sca_esv=556658825&hl=en&gl=us&q=FullStack+Labs&sa=X&ved=0ahUKEwi1_ZTUxNuAAxXjkIkEHVByA1cQmJACCNcF                 | https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSr7r9DALxIn3l8K7oxL6Yjj3cDqEHQlqE_PXPluMQ&s |
| 7          | Proofpoint                                   | http://www.proofpoint.com/           | https://www.google.com/search?hl=en&gl=us&q=Proofpoint&sa=X&ved=0ahUKEwjQsLbAuKP9AhXBkIkEHTUHA_U4ZBCYkAII4As                                    | https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRU25ywHlac0r1qPplkJLa96eu80ozdGzX3hD7-9WI&s |
| 8          | Huron Consulting Group Inc.                  | http://www.huronconsultinggroup.com/ | https://www.google.com/search?sca_esv=575100546&hl=en&gl=us&q=Huron+Consulting+Group+Inc.&sa=X&ved=0ahUKEwiu2erX-YOCAxVolWoFHUJ1AYw4ChCYkAIIqgs | https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRy7BDVLI1v0TTiEd_1-A9erQIeLXnbzmstT3FzCrk&s |
| 9          | Alku                                         | http://www.alku.com/                 | https://www.google.com/search?ucbcb=1&gl=us&hl=en&q=Alku&sa=X&ved=0ahUKEwiw-ZvT-8v-AhXPj4kEHQvKBhY4HhCYkAIIrg4                                  |                                                                                                   |
| 10         | Signify Technology                           |                                      | https://www.google.com/search?q=Signify+Technology&sa=X&ved=0ahUKEwj-xvuHwKv_AhXYGFkFHeTTAHY4RhCYkAII3Q0                                        | https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRA2IZThGwNjlpA9Ws6OUi9x-iGC47Oeyx6ZbtKVog&s |
| 11         | Cloudwall Capital SG                         |                                      | https://www.google.com/search?hl=en&gl=us&q=Cloudwall+Capital+SG&sa=X&ved=0ahUKEwjep8y9xY2AAxVKEVkFHWoWBbI4ChCYkAIIoQw                          |                                                                                                   |
| 12         | Agoda                                        | http://www.agoda.com/                | https://www.google.com/search?sca_esv=568736477&hl=en&gl=us&q=Agoda&sa=X&ved=0ahUKEwjShMikkcqBAxVjD0QIHdJ6ASkQmJACCP0I                          | https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlAAl3lHop538cKW63Inc8NOSOXelrEednawpd3z0&s |
| 13         | Genuine Parts Company                        | http://www.genpt.com/                | https://www.google.com/search?gl=us&hl=en&q=Genuine+Parts+Company&sa=X&ved=0ahUKEwjuqs-K3Kj-AhUdFlkFHc0xA404jAEQmJACCOQL                        |                                                                                                   |
| 14         | Karius                                       | http://kariusdx.com/                 | https://www.google.com/search?hl=en&gl=us&q=Karius&sa=X&ved=0ahUKEwibkabX56aAAxUWD1kFHWUyBwg4ZBCYkAIIzA0                                        |                                                                                                   |
| 15         | Verdant Infotech Solutions                   |                                      | https://www.google.com/search?hl=en&gl=us&q=Verdant+Infotech+Solutions&sa=X&ved=0ahUKEwi2k9DBgYGAAxWQkokEHVfwA784ChCYkAIIzQo                    | https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRspgWBXnL85XiPH6lQv8ZjpxwMdZZsp3yGGPKmdlg&s |
| 16         | Resurs Bank                                  | http://www.resursbank.se/            | https://www.google.com/search?gl=us&hl=en&q=Resurs+Bank&sa=X&ved=0ahUKEwiL0eTVnfT-AhU8kYkEHTbOBZkQmJACCLsL                                      | https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRy7BDVLI1v0TTiEd_1-A9erQIeLXnbzmstT3FzCrk&s |
| 17         | DevsData Tech Talent LLC - IT Recruitment    |                                      | https://www.google.com/search?q=DevsData+Tech+Talent+LLC+-+IT+Recruitment&sa=X&ved=0ahUKEwi7mNPqoab-AhUjFlkFHVjeD1kQmJACCJkM                    |                                                                                                   |
| 18         | Engtal                                       |                                      | https://www.google.com/search?gl=us&hl=en&q=Engtal&sa=X&ved=0ahUKEwjliZ7wqvn-AhUDlIkEHX6jB8E4KBCYkAIIoAw                                        | https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREGkSZLdjqPGzJSHXQShNhWfo51r8NvFZ3co8387M&s |
| 19         | Enlighten                                    |                                      | https://www.google.com/search?sca_esv=575547564&gl=us&hl=en&q=Enlighten&sa=X&ved=0ahUKEwjGhN71_oiCAxWwnGoFHfk7C3c4lgEQmJACCJoN                  | https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaSeTPtJ5z9keoDOPt-1Q_85DQ7NwJvwyI8hygRMQ&s |
*/

select *
from skills_dim
limit 20;

/*
Output:

| skill_id | skills     | type        |
| -------- | ---------- | ----------- |
| 0        | sql        | programming |
| 1        | python     | programming |
| 2        | nosql      | programming |
| 3        | scala      | programming |
| 4        | java       | programming |
| 5        | r          | programming |
| 6        | shell      | programming |
| 7        | sas        | programming |
| 8        | go         | programming |
| 9        | javascript | programming |
| 10       | html       | programming |
| 11       | css        | programming |
| 12       | bash       | programming |
| 13       | c++        | programming |
| 14       | c#         | programming |
| 15       | matlab     | programming |
| 16       | t-sql      | programming |
| 17       | typescript | programming |
| 18       | mongodb    | programming |
| 19       | kotlin     | programming |
*/

select *
from skills_job_dim
limit 20;

/*
Output:

| job_id | skill_id |
| ------ | -------- |
| 0      | 0        |
| 0      | 1        |
| 66     | 1        |
| 76     | 0        |
| 76     | 1        |
| 81     | 1        |
| 106    | 1        |
| 116    | 0        |
| 116    | 2        |
| 134    | 0        |
| 139    | 3        |
| 139    | 1        |
| 145    | 4        |
| 148    | 0        |
| 148    | 5        |
| 148    | 1        |
| 167    | 0        |
| 167    | 6        |
| 167    | 1        |
| 177    | 2        |
*/

-- Retrieving the top 10 highest paying remote Data Analyst positions.

select
    job_id,
    job_title,
    name as company_name,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date
from job_postings_fact as jpf
join company_dim as cd
    on jpf.company_id = cd.company_id
where
    job_title_short = 'Data Analyst'
    and job_work_from_home = true
    and salary_year_avg is not null
order by salary_year_avg desc
limit 10;

/*
Output:

| job_id  | job_title                                       | company_name                            | job_location | job_schedule_type | salary_year_avg | job_posted_date     |
| ------- | ----------------------------------------------- | --------------------------------------- | ------------ | ----------------- | --------------- | ------------------- |
| 226942  | Data Analyst                                    | Mantys                                  | Anywhere     | Full-time         | 650000.0        | 2023-02-20 15:13:33 |
| 547382  | Director of Analytics                           | Meta                                    | Anywhere     | Full-time         | 336500.0        | 2023-08-23 12:04:42 |
| 552322  | Associate Director- Data Insights               | AT&T                                    | Anywhere     | Full-time         | 255829.5        | 2023-06-18 16:03:12 |
| 99305   | Data Analyst, Marketing                         | Pinterest Job Advertisements            | Anywhere     | Full-time         | 232423.0        | 2023-12-05 20:00:40 |
| 1021647 | Data Analyst (Hybrid/Remote)                    | Uclahealthcareers                       | Anywhere     | Full-time         | 217000.0        | 2023-01-17 00:17:23 |
| 168310  | Principal Data Analyst (Remote)                 | SmartAsset                              | Anywhere     | Full-time         | 205000.0        | 2023-08-09 11:00:01 |
| 731368  | Director, Data Analyst - HYBRID                 | Inclusively                             | Anywhere     | Full-time         | 189309.0        | 2023-12-07 15:00:13 |
| 310660  | Principal Data Analyst, AV Performance Analysis | Motional                                | Anywhere     | Full-time         | 189000.0        | 2023-01-05 00:00:25 |
| 1749593 | Principal Data Analyst                          | SmartAsset                              | Anywhere     | Full-time         | 186000.0        | 2023-07-11 16:00:05 |
| 387860  | ERM Data Analyst                                | Get It Recruit - Information Technology | Anywhere     | Full-time         | 184000.0        | 2023-06-09 08:01:04 |
*/

-- Obtaining the skills associated with the highest paying roles.

with top_paying_jobs as (
    select
        job_id,
        job_title,
        name as company_name,
        salary_year_avg
    from job_postings_fact as jpf
    join company_dim as cd
        on jpf.company_id = cd.company_id
    where
        job_title_short = 'Data Analyst'
        and job_work_from_home = true
        and salary_year_avg is not null
    order by salary_year_avg desc
    limit 10
)
select
    tpj.*,
    skills
from skills_dim as sd
join skills_job_dim as sjd
    on sd.skill_id = sjd.skill_id
join top_paying_jobs as tpj
    on sjd.job_id = tpj.job_id
order by salary_year_avg desc;

/*
Output (first 20 rows):

| job_id  | job_title                                       | company_name                            | salary_year_avg | skills     |
| ------- | ----------------------------------------------- | --------------------------------------- | --------------- | ---------- |
| 552322  | Associate Director- Data Insights               | AT&T                                    | 255829.5        | sql        |
| 552322  | Associate Director- Data Insights               | AT&T                                    | 255829.5        | python     |
| 552322  | Associate Director- Data Insights               | AT&T                                    | 255829.5        | r          |
| 552322  | Associate Director- Data Insights               | AT&T                                    | 255829.5        | azure      |
| 552322  | Associate Director- Data Insights               | AT&T                                    | 255829.5        | databricks |
| 552322  | Associate Director- Data Insights               | AT&T                                    | 255829.5        | aws        |
| 552322  | Associate Director- Data Insights               | AT&T                                    | 255829.5        | pandas     |
| 552322  | Associate Director- Data Insights               | AT&T                                    | 255829.5        | pyspark    |
| 552322  | Associate Director- Data Insights               | AT&T                                    | 255829.5        | jupyter    |
| 552322  | Associate Director- Data Insights               | AT&T                                    | 255829.5        | excel      |
| 552322  | Associate Director- Data Insights               | AT&T                                    | 255829.5        | tableau    |
| 552322  | Associate Director- Data Insights               | AT&T                                    | 255829.5        | power bi   |
| 552322  | Associate Director- Data Insights               | AT&T                                    | 255829.5        | powerpoint |
| 99305   | Data Analyst, Marketing                         | Pinterest Job Advertisements            | 232423.0        | sql        |
| 99305   | Data Analyst, Marketing                         | Pinterest Job Advertisements            | 232423.0        | python     |
| 99305   | Data Analyst, Marketing                         | Pinterest Job Advertisements            | 232423.0        | r          |
| 99305   | Data Analyst, Marketing                         | Pinterest Job Advertisements            | 232423.0        | hadoop     |
| 99305   | Data Analyst, Marketing                         | Pinterest Job Advertisements            | 232423.0        | tableau    |
| 1021647 | Data Analyst (Hybrid/Remote)                    | Uclahealthcareers                       | 217000.0        | sql        |
| 1021647 | Data Analyst (Hybrid/Remote)                    | Uclahealthcareers                       | 217000.0        | crystal    |
*/

-- Creating a temp table to join the tables related to jobs and skills, filtered by remote Data Analyst positions.
-- Only the columns required for further analysis are selected.

create temp table jobs_and_skills as
    select
        job_title_short,
        job_work_from_home,
        salary_year_avg,
        sd.skill_id,
        skills
    from skills_job_dim as sjd
    join skills_dim as sd
        on sjd.skill_id = sd.skill_id
    join job_postings_fact as jpf
        on sjd.job_id = jpf.job_id
    where
        job_title_short = 'Data Analyst'
        and job_work_from_home = true;

-- Displaying a part of the temp table created.

select *
from jobs_and_skills
order by
    salary_year_avg,
    skill_id
limit 20;

/*
Output:

| job_title_short | job_work_from_home | salary_year_avg | skill_id | skills     |
| --------------- | ------------------ | --------------- | -------- | ---------- |
| Data Analyst    | 1                  | 35000.0         | 0        | sql        |
| Data Analyst    | 1                  | 35000.0         | 1        | python     |
| Data Analyst    | 1                  | 35000.0         | 5        | r          |
| Data Analyst    | 1                  | 35000.0         | 92       | spark      |
| Data Analyst    | 1                  | 35000.0         | 97       | hadoop     |
| Data Analyst    | 1                  | 35000.0         | 185      | looker     |
| Data Analyst    | 1                  | 36000.0         | 0        | sql        |
| Data Analyst    | 1                  | 36000.0         | 181      | excel      |
| Data Analyst    | 1                  | 39000.0         | 181      | excel      |
| Data Analyst    | 1                  | 41000.0         | 0        | sql        |
| Data Analyst    | 1                  | 41000.0         | 182      | tableau    |
| Data Analyst    | 1                  | 42500.0         | 170      | windows    |
| Data Analyst    | 1                  | 42500.0         | 181      | excel      |
| Data Analyst    | 1                  | 42500.0         | 253      | wire       |
| Data Analyst    | 1                  | 46500.0         | 0        | sql        |
| Data Analyst    | 1                  | 46500.0         | 7        | sas        |
| Data Analyst    | 1                  | 46500.0         | 79       | oracle     |
| Data Analyst    | 1                  | 46500.0         | 181      | excel      |
| Data Analyst    | 1                  | 46500.0         | 186      | sas        |
| Data Analyst    | 1                  | 46500.0         | 195      | sharepoint |
*/

-- Identifying the 5 most in-demand skills for remote Data Analyst positions.

select
    skills,
    count(skill_id) as demand_count
from jobs_and_skills
group by skills
order by demand_count desc
limit 5;

/*
Output:

| skills   | demand_count |
| -------- | ------------ |
| sql      | 7291         |
| excel    | 4611         |
| python   | 4330         |
| tableau  | 3745         |
| power bi | 2609         |
*/

-- Selecting the top skills for remote Data Analyst positions based on the highest average salary for each skill.

select
    skills,
    round(avg(salary_year_avg), 0) as avg_salary
from jobs_and_skills
where salary_year_avg is not null
group by skills
order by avg_salary desc
limit 20;

/*
Output:

| skills        | avg_salary |
| ------------- | ---------- |
| pyspark       | 208172     |
| bitbucket     | 189155     |
| watson        | 160515     |
| couchbase     | 160515     |
| datarobot     | 155486     |
| gitlab        | 154500     |
| swift         | 153750     |
| jupyter       | 152777     |
| pandas        | 151821     |
| elasticsearch | 145000     |
| golang        | 145000     |
| numpy         | 143513     |
| databricks    | 141907     |
| linux         | 136508     |
| kubernetes    | 132500     |
| atlassian     | 131162     |
| twilio        | 127000     |
| airflow       | 126103     |
| scikit-learn  | 125781     |
| jenkins       | 125436     |
*/

-- Finding the most optimal skills for learning. The search is done considering the two previous queries.
-- Results are first sorted by average salary and then by demand count, both in descending order.
-- Moreover, only entries with a demand count greater than 10 are taken.

select
    skills,
    count(skill_id) as demand_count,
    round(avg(salary_year_avg), 0) as avg_salary
from jobs_and_skills
where salary_year_avg is not null
group by skills
having count(skill_id) > 10
order by
    avg_salary desc,
    demand_count desc
limit 20;

/*
Output:

| skills     | demand_count | avg_salary |
| ---------- | ------------ | ---------- |
| go         | 27           | 115320     |
| confluence | 11           | 114210     |
| hadoop     | 22           | 113193     |
| snowflake  | 37           | 112948     |
| azure      | 34           | 111225     |
| bigquery   | 13           | 109654     |
| aws        | 32           | 108317     |
| java       | 17           | 106906     |
| ssis       | 12           | 106683     |
| jira       | 20           | 104918     |
| oracle     | 37           | 104534     |
| looker     | 49           | 103795     |
| nosql      | 13           | 101414     |
| python     | 236          | 101397     |
| r          | 148          | 100499     |
| redshift   | 16           | 99936      |
| qlik       | 13           | 99631      |
| tableau    | 230          | 99288      |
| ssrs       | 14           | 99171      |
| spark      | 13           | 99077      |
*/