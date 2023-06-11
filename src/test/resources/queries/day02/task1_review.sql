select * FROM employees;

--  From jobs, Display all information  where job title President ,Sales Manager, Finance Manager
select * from JOBS
where JOB_TITLE = 'Sales Manager' or  JOB_TITLE = 'President' or JOB_TITLE = 'Finance Manager';

-- Or this query which will do the same thing as one above
select * from JOBS
where JOB_TITLE IN ('Sales Manager', 'President', 'Finance Manager');


-- Display all Department that does not have manager_id in departments table
SELECT * from DEPARTMENTS
where MANAGER_ID is NULL;


--  Display all Locations in US or UK from Locations table
select  * from LOCATIONS;

SELECT * from LOCATIONS
where COUNTRY_ID in ('US', 'UK');


--  Display all Locations NOT in US or UK from Locations table
SELECT * from LOCATIONS
where COUNTRY_ID NOT in ('US', 'UK');


--  Display all Countries in Region_ID of 1 and Country_Name not Belgium, from Countries table
SELECT * From COUNTRIES
where REGION_ID = 1 AND country_name != 'Belgium';

-- OR we can write it with this syntax -- to replace the !=
SELECT * From COUNTRIES
where REGION_ID = 1 AND country_name <> 'Belgium';

-- OR we can write it this way.
SELECT * From COUNTRIES
where REGION_ID = 1 AND COUNTRY_NAME NOT IN ('Belgium');

-- OR we can write it this way.
select * from COUNTRIES
where REGION_ID = 1 and COUNTRY_NAME not like 'Belgium';


--display all employees who does not work in any one of these department id 90, 60,  100, 130, 120
SELECT * From EMPLOYEES
where EMPLOYEE_ID NOT IN (90, 60, 100, 130, 120);


-- ----------------------------------------------------------------------






