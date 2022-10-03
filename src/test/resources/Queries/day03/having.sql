select * from employees;

-- display job_ids where their avg salary is more then 5k

select JOB_ID, avg(SALARY) from EMPLOYEES
group by JOB_ID
having avg(SALARY) > 5000;

--display dep id where employees id count bigger than 5
select DEPARTMENT_ID,count(*) from EMPLOYEES
group by DEPARTMENT_ID
having count(*) > 5;

--display duplicate names from employees table
select FIRST_NAME, count(*) from EMPLOYEES
group by FIRST_NAME
having count(*) > 1;