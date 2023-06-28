-- QUESTION 1 : WRITE A QUERY TO SHOW THE ALBUM TITLES IN ASCENDING ORDER
select * from album
order by Title ASC;

/* QUESTION 2 : HOW MANY ARTISTS START WITH B?
 select name from artist
where name like 'B%';

 QUESTION 3 :  WHAT'S THE CUSTOMERS NAME WHOSE CITY IS OSLO?
select firstname,LastName from customer
where city = 'OSLO';

/* QUESTION 4  : HOW MANY CUSTOMERS DO WE HAVE FROM CANADA?
select count(customerid) from customer
where country = 'CANADA';*/

/* QUESTION 5 : WHAT'S THE AVERAGE TRACK UNIT PRICE? */
select avg(unitprice) 
from track;

/* QUESTION 6 : WHAT'S THE SUM OF INVOICE TOTAL PER BILLING COUNTRY? */
select billingcountry, sum(total)
from invoice
group by BillingCountry;

/* QUESTION 7 : SHOW THE ONLY EMPLOYEES WHOSE NAME STARTS WITH P*/
select firstname,lastname from employee
where LastName like 'P%'