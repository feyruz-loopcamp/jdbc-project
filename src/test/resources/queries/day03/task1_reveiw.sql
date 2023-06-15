select * from employees;

-- The code below is specific to the column which has a data type as DATE --- > 'YYYY-MM-DD
select * from EMPLOYEES
where HIRE_DATE = TO_DATE('2007-12-12', 'YYYY-MM-DD');


--find the 3th maximum salary from the employees table (do not include duplicates)
-- Manual Steps
    --first sort the salary
    --then remove duplicates
    select distinct SALARY from EMPLOYEES
    order by SALARY desc;

    -- cut the list from line 4 to get the first 3 rows
    -- then use the min function to fin the 3 maximum.

    select min(SALARY) from (select distinct SALARY from EMPLOYEES
                            order by SALARY desc)
    where ROWNUM < 4;



-- How can we get information about that employee  (3rd max )
select * from EMPLOYEES
where SALARY = 14000;


select * from EMPLOYEES
where SALARY = (select min(SALARY) from (select distinct SALARY from EMPLOYEES
                                         order by SALARY desc)
                where ROWNUM < 4);


--find the 3rd minimum salary from the employees table (do not  include duplicates)
-- Manual Steps
    --first sort the salary
    --then remove duplicates
    select distinct SALARY from EMPLOYEES
    order by SALARY asc;  -- we can delete the asc as well since it sorts in ascending order if there is not asc keyword

    -- cut the list from line 4 to get the first 3 rows
    -- then use the max function to fin the 3 maximum.
    select max(salary) from (select distinct SALARY from EMPLOYEES
    order by SALARY asc)
    where rownum < 4;


-- How can we get information about that employee  (3rd min )
    select * from EMPLOYEES
    where SALARY = (select max(salary) from (select distinct SALARY from EMPLOYEES
                                             order by SALARY asc)
                    where rownum < 4);


-- Q:  Why we have 2 row information here?
-- A:  Since we are looking for employees who is making 3rd minim salary and since in our table we have 2 people that is making 2400, the result shows both.



