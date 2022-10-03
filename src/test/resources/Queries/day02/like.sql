select * from Departments;

-- percent (%) -> for matching any sequence of chars
-- underscore (_) -> for matching any single character

-- display all employees who's name starts with B
select * from EMPLOYEES
where FIRST_NAME like 'B%';

-- display all employees whose name starts with B and has 5 letters
select * from EMPLOYEES
where FIRST_NAME like 'B____';

select * from EMPLOYEES
where FIRST_NAME like '__z__';

--display the first name where second char is a
select * from EMPLOYEES
where FIRST_NAME like '_a%';

-- display all info whose first name ends with r
select * from EMPLOYEES
where FIRST_NAME like '%r';

-- display job title info ends with manager from jobs table
select * from JOBS
where JOB_TITLE like '%Manager';

--how many employees we have from task above
select count(*) from JOBS
where JOB_TITLE like '%Manager';