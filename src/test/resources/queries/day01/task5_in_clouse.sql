select * from employees;

-- IN works as or logic
select * from EMPLOYEES
where JOB_ID In ('IT_PROG', 'SA_REP');


-- from employees, get me the all info whose job id is NOT 'IT_PROG', 'SA_REP')
select * from EMPLOYEES
where JOB_ID NOT In ('IT_PROG', 'SA_REP');


-- from location, Display city of where country id IT,US,UK
select CITY from LOCATIONS
where COUNTRY_ID IN ('IT', 'US', 'UK');


-- From employees, Display all information where employee_id 134,123,145,146
select * from EMPLOYEES
where EMPLOYEE_ID in (134, 123, 145, 146);


-- from employees, Display all information for employees whose department id is Null
select * from EMPLOYEES
where DEPARTMENT_ID is NULL;


-- Display all information for employees whose is department id is NOT Null
select * from EMPLOYEES
where DEPARTMENT_ID is NOT NULL;