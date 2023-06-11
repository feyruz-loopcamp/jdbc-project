select * FRom employees;

/*
    Aggregate function - Multi Row Function
    Takes multiple input and gives only one result.
 */


--COUNT
--How many employees we have? IQ
SELECT COUNT (*) FROM EMPLOYEES;


-- How many unique firstname we have
SELECT COUNT (distinct FIRST_NAME) from EMPLOYEES;


-- How many employees work as 'IT_PROG' or 'SA_REP'
select COUNT (*) from EMPLOYEES
where JOB_ID in ('IT_PROG','SA_REP');


-- How many employees we have department id is null
select COUNT(*) from EMPLOYEES
where DEPARTMENT_ID IS NULL;

--Or we can do it this way but since COUNT does not accept null as a value, it will not count it.
select * from EMPLOYEES
where DEPARTMENT_ID IS NULL;



select COUNT(MANAGER_ID) from EMPLOYEES
where DEPARTMENT_ID IS NULL;

select DEPARTMENT_ID from EMPLOYEES
where DEPARTMENT_ID IS NULL;

select COUNT(DEPARTMENT_ID) from EMPLOYEES
where DEPARTMENT_ID IS NULL;


-- MIN

--get me min salary from employees
select SALARY from EMPLOYEES;

select MIN(SALARY) from EMPLOYEES; --2100


-- MAX
--get me min salary from employees
select SALARY from EMPLOYEES;

select MAX(SALARY) from EMPLOYEES;  --24000


-- AVG
--get me avg salary from employees
select SALARY from EMPLOYEES;

select AVG(SALARY) from EMPLOYEES;  --6461.831775700934579439252336448598130841


-- SUM
--get me sum of salary from employees
select SALARY from EMPLOYEES;

select SUM(SALARY) from EMPLOYEES;  --691416


-- Calculation of average
select SUM(SALARY) from EMPLOYEES;  --691416
select COUNt (*) from EMPLOYEES; -- 107



-- ROUND
select ROUND (avg (Salary), 2)from EMPLOYEES;  --6461.83
select ROUND (avg (Salary), 3)from EMPLOYEES;  --6461.832
select ROUND (avg (Salary), 1)from EMPLOYEES;  --6461.8
select ROUND (avg (Salary), 0)from EMPLOYEES;  --6461
select ROUND (avg (Salary), -1)from EMPLOYEES;  --6460 - if 5 and more, it rounds it to the highest flat number. Or 4 and less to the lowest. Since 1 from 6461 is less than 4, it rounded it up to 6460
select ROUND (avg (Salary), -2)from EMPLOYEES;  --6400






