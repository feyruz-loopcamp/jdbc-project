select * from employees;

/*
  SUBQUERY
    similar to nested ifs, loops and etc.
 */

-- Display all information from employees who is making highest salary in company ?
select max(SALARY) from EMPLOYEES;  -- 24000

select * from EMPLOYEES
where SALARY= 24000;

--To mak eit dynamic, we cna use subquery. Why I need it to be dynamic? Because the new data may get injected into date base
select * from EMPLOYEES
where SALARY= (select max(SALARY) from EMPLOYEES);

-- We cna sort and see who is at the top just to make sure.
select * from employees
order by SALARY desc;

-- find second max   -- 17000
select max(salary) from EMPLOYEES
where SALARY < 24000;

-- Make it dynamic now
select max(salary) from EMPLOYEES
where SALARY < (select max(SALARY) from EMPLOYEES);


-- Display all information for second highest
 select * from EMPLOYEES
 where SALARY =  17000;

--make it dynamic
select * from EMPLOYEES
where SALARY =  (select max(salary) from EMPLOYEES
                 where SALARY < (select max(SALARY) from EMPLOYEES));


-- Display all the employees who are making above the average salary
select ROUND (avg(salary), 2) from EMPLOYEES; -- 6461

-- To make dynamic: get all employees who is making more > avg
select * from EMPLOYEES
where SALARY > (select ROUND (avg(salary), 2) from EMPLOYEES);










