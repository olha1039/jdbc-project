select * from Employees;

/*
create table syntax:
    create table TableName(
        colName1 DataType Constraints,
        colName2 DataType Constraints(optional)
        colName3 DataType Constraints,
        ...
    );
*/

CREATE TABLE scrumteam(
    employeeID INTEGER PRIMARY KEY, -- not null and unique
    firstname varchar(30) not null, --can't be null
    jobtitle varchar(20) not null, -- can't be null
    age INTEGER, -- there is no constrains
    salary INTEGER
);
/*
INSERT
INTO tableName (column1, column2,...)
VALUES (value1, value2 ... );
*/

select * from scrumteam;

INSERT into scrumteam (employeeID, firstname, jobtitle, age, salary)
values (1, 'Mike', 'Tester', 25, 12000);

INSERT into scrumteam (employeeID, firstname, jobtitle, age, salary)
values (2, 'John', 'Tester', 27, 130000);

INSERT into scrumteam (employeeID, firstname, jobtitle)
values (3, 'Dembe', 'Developer');

INSERT into scrumteam
values (4, 'Henry', 'SM', 30, 150000);

/*
 UPDATE table_name
  SET column1 = value1,
        column2 = value2 , ...
  WHERE condition;
 */

 -- increase all employees salary
update scrumteam
Set salary = salary + 5000;

-- increase all testers salary
update scrumteam
set salary = salary + 50000
where jobtitle = 'Tester';

-- add age for Dembe
update scrumteam
set age = 34, salary = 160000
where firstname = 'Dembe';

/*
 DELETE
 DELETE FROM table_name
 WHERE condition
 */

 DELETE from scrumteam
where firstname = 'Dembe';

select * from scrumteam;

commit ; -- save changes to the database
commit work ; -- does the same thing as above

--add new column
ALTER table scrumteam
add gender varchar(20);

select * from scrumteam;

--update all scrumteam gender as Male
update scrumteam
set gender = 'Male';

--Rename column
ALTER table scrumteam
rename column salary to annual_salary;

--drop column
Alter TABLE scrumteam
drop column gender;

--rename Table
ALTER TABLE scrumteam
rename to agileteam;

select * from agileteam; -- name was changed

-- TRUNCATE
TRUNCATE table agileteam;
-- will delete all table content data, but table will still be there, like headers

--DROP
Drop table agileteam;
-- the table does not exist, it will delete the whole table

--IQ what is the difference between DROP and TRUNCATE?

--view --> it is not exist in database with data. it is just a virtual table to reuse that query
--table -> it is exist in database with their data



