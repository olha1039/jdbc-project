select * from employees;

/*
 Aliases
 -- rename column --> give a temporary name for column. it will not do anything in database
 --rename table --> JOINS
 */

 -- rename column, will name the column as upper case
select FIRST_NAME as given_name from EMPLOYEES;

select max(SALARY) as highest_salary from EMPLOYEES;

-- another way to rename, will print exaclty what is inside double quote, but with using double quote in the name
select FIRST_NAME as "given_name" from EMPLOYEES;

/*
 String functions:
 CONCAT - in SQL we use || ' ' ||

 */

 -- add email to @gmail.com
select EMAIL || '@gmail.com' as full_email from EMPLOYEES;

select concat(EMAIL, '@gmail.com') as full_email from EMPLOYEES;

-- LOWER
select lower(concat(EMAIL, '@gmail.com')) as full_email from EMPLOYEES;

--UPPER
select upper(concat(EMAIL, '@gmail.com')) as full_email from EMPLOYEES;

--INITCAP
-- it makes first letter uppercase
select EMAIL from EMPLOYEES;
select initcap (EMAIL) from EMPLOYEES;

-- LENGTH
-- it will length of provided data
select length(email) from EMPLOYEES;

--Distplay all the employees first name and length of it in the result
select FIRST_NAME, length(FIRST_NAME) as length_firstname from EMPLOYEES
order by length_firstname;
 -- or by index
select FIRST_NAME, length(FIRST_NAME) as length_firstname from EMPLOYEES
order by 2;

/*
 SUBSTR (colName, beginIndex, numberOfChars)
 - if beginning index is 0, it is treated as 1
 - if beginIndex is negative, it wil start from backward of data
 - if numberOfChar is omitted, it works till the end
 */
 --Display all initial from employees --> Stiven King -> S.K.
select substr(FIRST_NAME,0,1) || '.' || substr(LAST_NAME,0,1) || '.' as name_intials from EMPLOYEES;

--IQ print name and salary who has salary more than 3000.Sort result in asc order of the last 3 chars of the emp name,
-- if two or more emp have the same last 3 char sort them by highhest salary

select FIRST_NAME, SALARY from EMPLOYEES
where SALARY > 3000
order by lower(substr(FIRST_NAME,-3)) asc, SALARY desc;








