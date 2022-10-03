select * from employees;

--display avr salary for 'IT_PROG'
select avg(SALARY) from EMPLOYEES
where JOB_ID='IT_PROG';

--display average salary for 'SA_REP'
select avg(SALARY) from EMPLOYEES
where JOB_ID = 'SA_REP';

--display average salary for 'MK_MAN'
select avg(SALARY) from EMPLOYEES
where JOB_ID = 'MK_MAN';

--how many job id we have
select count(distinct JOB_ID) from EMPLOYEES;


select JOB_ID, avg (SALARY) from EMPLOYEES
group by JOB_ID;

select JOB_ID, avg(SALARY),min (SALARY),sum (SALARY),max(SALARY), count(*) from EMPLOYEES
group by JOB_ID;

--display sum(salary) each department in emp table
select DEPARTMENT_ID,sum(SALARY),count(*) ,min(salary)  from EMPLOYEES
where DEPARTMENT_ID is not null
group by DEPARTMENT_ID
order by DEPARTMENT_ID;
