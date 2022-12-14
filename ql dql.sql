create database dql_1;
use dql_1;
CREATE TABLE ZeeRentals(
	Rental_id VARCHAR(10) PRIMARY KEY,
    Cust_id VARCHAR(10),
    Laptop_id VARCHAR(10),
    Pick_date DATE,
    Return_date DATE,
    Amount BIGINT(20)
);
INSERT INTO ZeeRentals VALUES
('01','CUS1','300','2020-05-21','2022-10-08',80000),
('02','CUS2','400','2020-05-13','2022-01-22',100000),
('03','CUS3','350','2020-03-27','2022-12-11',90000);
SELECT * FROM ZeeRentals;

SELECT Rental_id, Cust_id, Laptop_id, Amount, RPAD(Amount,10,"*") AS Modified_Amount 
FROM ZeeRentals
WHERE Amount > 7000 AND YEAR(Pick_Date) = 2020 AND MONTH(Pick_Date) = 05
ORDER BY Rental_id ASC;
