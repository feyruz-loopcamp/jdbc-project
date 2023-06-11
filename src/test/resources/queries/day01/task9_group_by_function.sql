select * from employees;

/*
    NOTE: The group by clause divides the rows from the select statement into group based on the row we provide

    Instead of typing same query for all different job_id
    we can group them and find (lets say) average salary for each job_id

    Queries groups all the record based on their job_id
    so that we can implement aggregate functions to each group

    IMPORTANT: "EACH" is the tricky word. Mostly represents that the task is about Group By

 */


select DISTINCT JOB_ID from EMPLOYEES;


-- Display average salary for "IT_PROG"   --Interview Question
select SALARY, JOB_ID from EMPLOYEES;

select AVG(SALARY) from EMPLOYEES
where JOB_ID = 'IT_PROG';


select AVG(SALARY) from EMPLOYEES
where JOB_ID = 'SA_REP';


-- Now, when you each 'tricky word' on the requirement that mens 'group by'

--get me each job_id MIN salary
--Display average salary for each job ID

--1 step - I took all the job id's and groupd them together.
select JOB_ID from EMPLOYEES;

select JOB_ID from EMPLOYEES
group by JOB_ID;

--2 ste -
select JOB_ID, AVG(SALARY) FROM EMPLOYEES
group by JOB_ID;


-- chaining and making a data table.

select JOB_ID, AVG(SALARY), min(salary), max(salary), sum(SALARY), count(*) FROM EMPLOYEES
group by JOB_ID;


--Display sum of salary of each department in Employees table
select sum(salary), DEPARTMENT_ID from EMPLOYEES
group by DEPARTMENT_ID;


--Find the highest salary (practice) for each department in Employees table
select MAX(salary), DEPARTMENT_ID from EMPLOYEES
group by DEPARTMENT_ID;