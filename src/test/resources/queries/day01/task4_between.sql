select * from employees;


-- from employees,  get me firstname,salary who is making salary more than 7000 and department id is 80
SELECT FIRST_NAME, SALARY from EMPLOYEES
where SALARY > 7000 and DEPARTMENT_ID = 80;


-- from employees, get me  firstname,lastname who is making salary more then 3000 and less than 6000
-- write the query without BETWEEN
select FIRST_NAME, LAST_NAME from EMPLOYEES
where SALARY > 3000 and SALARY < 6000;


select FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES
where SALARY >= 3000 and SALARY <= 6000;

-- write the same query with BETWEEN clause
select FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES
where SALARY between  3000 and 6000;  -- BETWEEN will include the rage as well


-- from employees, get me all information who is working as 'IT_PROG' or 'SA_REP'
select * from EMPLOYEES
where JOB_ID = 'IT_PROG' or JOB_ID = 'SA_REP';



