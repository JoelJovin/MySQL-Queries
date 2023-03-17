-- use store;
use exercise_hr;
show tables;
select * from countries order by country_Name desc;
use store;
show tables;
select * from customers;
select * from customers where state='FL'  or state='VA' or state='GA';
select * from products where quantity_in_stock IN(49,38,72);
/* Order of logical operators:
NOT-- (except that)
AND-- ( this and that)
OR--   ()
*/
select * from customers where points between 3000 and 10000;
select * from customers where points>=3000 and points<=10000;
select * from customers where birth_date between '1990-01-01' and '2000-01-01';
select * from customers where last_name like 'MacCaffrey';
select * from customers where address like '%trail%' or address like '%avenue%';
/*NOT like*/
select * from customers;
select * from customers where last_name like '_____y';
select * from customers where last_name like 'b____y';
select * from customers where last_name regexp 'field';
select * from customers where last_name regexp '^Mac';
select * from customers where last_name regexp 'field$';
select * from customers where last_name regexp '^Mac|field$|rose';
/*^start ,end$ ,rose(contains)
*/
use store;
show tables;
select * from customers;
select * from customers where last_name regexp '[bc]e';
select * from customers where last_name regexp '[bc]e';
select * from customers where first_name regexp 'b';
USE exercise_hr;
select * from employees where first_name like "%b%" and first_name like "%c%";
select * from employees where first_name regexp "b" && first_name regexp "c";
select * from employees;
USE store;
show tables;
select * from order_statuses;
select * from orders;
select * from orders where status=1;
select * from orders where shipper_id is not null;
select * from shippers;
select * from orders where shipper_id is not null limit 3;
select * from orders where shipper_id is not null limit 1,3;
select * from orders where shipper_id is not null limit 5,5;
select * from customers order by points DESC limit 3;
explain select * from employees where last_name="De Haan";
use exercise_hr;
show tables;
select *from employees;
select first_name,last_name,job_id from employees where Department_id=60;
select * from departments as d,employees as e where d.department_id=60;
select * from employees inner join departments on employees.department_id=departments.department_id;









