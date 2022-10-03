select * from employees;

/*
 INNER JOIN
 Only matching portion of the tables
 */
 select FIRST_NAME,LAST_NAME,ADDRESS,PHONE
from CUSTOMER inner join ADDRESS
on CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID; -- FK = PK

select FIRST_NAME,LAST_NAME,ADDRESS.ADDRESS_ID,ADDRESS,PHONE --address id is same is customer and address, but intelij doesn't know that, need to specify
from CUSTOMER inner join ADDRESS
on CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID;

--aliases
-- instead of using table name we can use alias to specify the table
select FIRST_NAME,LAST_NAME,A.ADDRESS_ID,C.ADDRESS_ID,ADDRESS,PHONE
from CUSTOMER C inner join ADDRESS A
on C.ADDRESS_ID = A.ADDRESS_ID;

/*

 LEFT OUTER JOIN
Matching part + only unique for LEFT table
 left outer join == left join
 */
select FIRST_NAME,LAST_NAME,A.ADDRESS_ID,C.ADDRESS_ID,ADDRESS,PHONE
from CUSTOMER C left  join  ADDRESS A
                            ON C.ADDRESS_ID = A.ADDRESS_ID;

select FIRST_NAME,LAST_NAME,A.ADDRESS_ID,C.ADDRESS_ID,ADDRESS,PHONE
from ADDRESS A right  join  CUSTOMER C
                            ON C.ADDRESS_ID = A.ADDRESS_ID;

/*

 RIGHT OUTER JOIN
Matching part + only unique for RIGHT table
 right outer join == left
 */
select FIRST_NAME,LAST_NAME,A.ADDRESS_ID,C.ADDRESS_ID,ADDRESS,PHONE
from CUSTOMER C right join   ADDRESS A
                             ON C.ADDRESS_ID = A.ADDRESS_ID;

select FIRST_NAME,LAST_NAME,A.ADDRESS_ID,C.ADDRESS_ID,ADDRESS,PHONE
from ADDRESS A LEFT JOIN CUSTOMER C
                         ON A.ADDRESS_ID=C.ADDRESS_ID;

/*
 FULL OUTER JOIN
 Matching part * only unique for Right table
 There is no diff between full outer join vs full join
 */

 select FIRST_NAME,LAST_NAME,A.ADDRESS_ID,C.ADDRESS_ID,ADDRESs,PHONE
from CUSTOMER C full join ADDRESS A
on C.ADDRESS_ID = A.ADDRESS_ID;

/*
 LEFT OUTER JOIN WITH WHERE
 --Get only unique for left table
 */

 select CUSTOMER_ID,FIRST_NAME,LAST_NAME,PHONE from CUSTOMER
left join ADDRESS
on CUSTOMER.ADDRESS_ID = ADDRESS.ADDRESS_ID
where ADDRESS.ADDRESS_ID is null;

/*
 FULL OUTER WITH WHERE
 -- get non matching part of the table
 */
select * from CUSTOMER
full join ADDRESS
on customer.ADDRESS_ID = ADDRESS.ADDRESS_ID
where ADDRESS.ADDRESS_ID is null or CUSTOMER.ADDRESS_ID is null;

