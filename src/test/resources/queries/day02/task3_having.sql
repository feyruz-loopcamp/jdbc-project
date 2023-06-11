select * from employees;

/*
    We often use HAVING clause in  conjunction with GROUP BY clause to filter group
    rows that do not satisfy a specified requirement

    Q: What is the difference between HAVING and WHERE condition when used with GROUP BY?
    A:
        WHERE
            it filters to result before put them into group
            Basically, we are eliminating employees before put them into group
            It works like this if any people has salary over 500 it will put them in group.
            IT WORKS BEFORE GROUP BY


        HAVING
            it filters to result after put them into group
            Basically, we put all data in group after that we find the avg salary of each group
            It works like this if any group has avg salary over 5000. It will display
            IT WORKS AFTER GROUP BY

 */


-- Display job ids where the avg salary is more than 5K


select JOB_ID, SALARY from EMPLOYEES;

-- BAD PRACTICE
select JOB_ID, AVG(SALARY), count(*) from EMPLOYEES
where SALARY > 5000
group by JOB_ID;


--Good practice
select JOB_ID, avg (Salary), count (*) from EMPLOYEES
group by JOB_ID
having avg(SALARY) > 5000;



-- Display department_id where employees count bigger than 5
select DEPARTMENT_ID, count(*) from EMPLOYEES
group by DEPARTMENT_ID
having count(*)  > 5;



--IQ: Display duplicates names in employee table
select FIRST_NAME, count (*) from EMPLOYEES
group by FIRST_NAME
having count(*)>1;


-- To give a name to the average column name we us _____ as "HELLO"______
-- If you are giving a single work as the name of the column, you can use it without double quotation. If more than one, use double quotation if we want to ahve a space.
select * from EMPLOYEES;

select JOB_ID, avg(salary) as "AVERAGE SALARY" from EMPLOYEES
where JOB_ID IN ('IT_PROG', 'SA_REP' )
group by JOB_ID;

