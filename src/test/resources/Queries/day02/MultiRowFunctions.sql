select * from locations;

/*
 multi-row/aggregate/grouping func
 count
 min
 max
 avg
 sum
 it will take multiple row and gives single output

 */

-- how many departments we have?
select count(*) from DEPARTMENTS;

-- how many different names we have
select count(distinct FIRST_NAME) from EMPLOYEES;

--how many employees we have work as IT_Prog or Sa_Rep
select count(*) from EMPLOYEES
where JOB_ID in ('IT_PROG', 'SA_REP');

--how many employees we have as department_id is null
-- gives us correct result since counting rows
select count(*) from EMPLOYEES
where DEPARTMENT_ID is null;
-- gives us wrong data if you want to count rows, use * always
select count(DEPARTMENT_ID) from EMPLOYEES
where DEPARTMENT_ID is null;

select count(DEPARTMENT_ID) from EMPLOYEES
where DEPARTMENT_ID is not null;

--MAX
--dispaly max salary from employees
select max (SALARY)from EMPLOYEES;
--MIN
select min (SALARY)from EMPLOYEES;

--SUM
select sum(SALARY) from EMPLOYEES;

--avg
select avg(SALARY) from EMPLOYEES;

-- ROUND --> It is not an aggregate func.It is numeric function
select round(avg(salary)) from EMPLOYEES;
select round(avg(salary),1) from EMPLOYEES;
select round(avg(salary),2) from EMPLOYEES;
select round(avg(salary),3) from EMPLOYEES;
