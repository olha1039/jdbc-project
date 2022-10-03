select * from employees;

/* subquery:
   - query inside query
   - inner queries will run first
 */

select max(SALARY) from EMPLOYEES; --24k

select * from EMPLOYEES
where SALARY = 24000; --hardcoded

-- make it dynamic
select * from EMPLOYEES
where SALARY = (select max(SALARY) from EMPLOYEES); --hardcoded

-- display all info who is making second highest salary
--substeps
--select max(SALARY) from EMPLOYEES;

--select max(SALARY) from EMPLOYEES
--where SALARY < (select max(SALARY) from EMPLOYEES);

select * from EMPLOYEES
where SALARY = (select max(SALARY) from EMPLOYEES
                where SALARY < (select max(SALARY) from EMPLOYEES));

-- display all info who is getting more than avg salary

select * from EMPLOYEES
where SALARY > (select round(avg(SALARY)) from EMPLOYEES);






