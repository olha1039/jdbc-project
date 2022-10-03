select * from employees;

select * from employees
order by SALARY asc;

select * from EMPLOYEES
order by SALARY desc;

-- order the result by salary, because it's column with index 8
select * from EMPLOYEES
order by 8;

-- sorted in ascending order by email
select EMAIL, FIRST_NAME from EMPLOYEES
order by 1;

--get all info where employee id <120
--and order them based ascending order
select * from EMPLOYEES
where EMPLOYEE_ID < 120
order by FIRST_NAME;

-- get me all info from employees based first name asc and last name desc
select * from EMPLOYEES
order by FIRST_NAME, LAST_NAME desc;

