select * from employees;

-- get me firstname,lastname,salary from employees where firstname is David
select FIRST_NAME,LAST_NAME, SALARY
from employees
where FIRST_NAME='David';


-- get me firstname,lastname,salary where firstname from employees is David and lastname is Lee
select FIRST_NAME,LAST_NAME, SALARY
from employees
where FIRST_NAME='David' AND LAST_NAME = 'Lee';


-- get me all information who is making salary more than 6000 in employees
SELECT * FROM EMPLOYEES
where SALARY > 6000;


-- get me all information from employees who is making salary less than and equal 6000
select * from EMPLOYEES
where SALARY <= 6000;  -- on this SALARY column the data type int/Integer was used. However, we can use it with SINGLE QUOTE as well


-- get me email from employees who is making salary less than and equal 6000
SELECT EMAIL from EMPLOYEES where SALARY <= 6000;