SELECT * FROM EMPLOYEES;

-- Display street address and postal code from locations
select STREET_ADDRESS, POSTAL_CODE from LOCATIONS;
select DISTINCT STREET_ADDRESS, POSTAL_CODE from LOCATIONS;


-- Get me first names from employees
SELECT FIRST_NAME from EMPLOYEES;  -- this will show all the names
SELECT DISTINCT FIRST_NAME from EMPLOYEES; -- this will remove duplicates and then show the names


-- get me unique job_ids from employees
SELECT DISTINCT JOB_ID from EMPLOYEES;
SELECT JOB_ID from EMPLOYEES;

-- The below sample shows that DISTINCT will remove the duplicate for BOTH columns
SELECT DISTINCT JOB_ID, SALARY from EMPLOYEES;
SELECT JOB_ID, SALARY from EMPLOYEES;


-- get me unique country ids from locations
SELECT distinct COUNTRY_ID from LOCATIONS;
SELECT COUNTRY_ID from LOCATIONS;

-- get me unique job_ids from jobs
select distinct JOB_ID from JOBS;
select JOB_ID from JOBS;
