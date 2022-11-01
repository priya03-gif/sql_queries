create database Employeee2;
use employeee2;
create table staff(
staff_id int(11) primary key,
staff_name varchar(25),
supervisor_id int(11),
salary bigint(20),
join_date DATE,
dept_id int(11)

);

create table department(
dept_id INT(11),
dept_name varchar(25)
);

Insert into staff values(4,'priyaa',13,3500,'2022-10-01',10),(5,'anish',13,3000,'2022-10-01',1),(6,'raju',11,6000,'2012-07-09',10),
(7,'mohana',11,2000,'2022-09-09',11),(8,'dev',11,2000,'2022-06-19',11);

(select avg(salary) from staff where dept_id = 10);


SELECT staff_id,staff_name,salary,dept_id
FROM STAFF
WHERE salary > (select avg(salary) from staff where dept_id = 11) AND dept_id=10;