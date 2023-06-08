SELECT * FROM employees;

SELECT FIRST_NAME, LAST_NAME from EMPLOYEES;

-- get me firstname from employees;
SELECT FIRST_NAME from EMPLOYEES;


-- get me firstname and salary from employees
SELECT FIRST_NAME, SALARY from EMPLOYEES;


-- get me firstname,lastname and salary from employees
SELECT FIRST_NAME, last_name, SALARY from EMPLOYEES;



--Display all information from department table
SELECT * FROM DEPARTMENTS;


-- Display city names from locations
SELECT CITY FROM LOCATIONS;


-- Display country name and region id from countries
select COUNTRY_NAME, REGION_ID FROM COUNTRIES;
select REGION_ID, COUNTRY_NAME FROM COUNTRIES;


-- Display job_id and job title from jobs
SElect job_ID, job_Title From jobs;

-- Display street addrees and postal code from locations
select STREET_ADDRESS, posTAL_COde FRom LOCATIONS;


--Display department names from department table
SELECT  DEPARTMENT_NAME FROM DEPARTMENTS;


--Display region names from regions
SELECT REGION_NAME FROM REGIONS;