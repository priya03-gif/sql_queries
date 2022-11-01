CREATE database dd4;
Use dd4;
CREATE TABLE t_doctor(
doctor_id INT(11) ,
doctor_name VARCHAR(25) ,
mobile_no INT(11) ,
email VARCHAR(30) ,
specialization VARCHAR(10) ,
fees INT(7),
PRIMARY KEY (doctor_id)
);
CREATE TABLE t_patient(
patient_id VARCHAR(10) ,
patient_name VARCHAR(30) ,
gender CHAR(2),
ailment VARCHAR(20) ,
doctor_id INT(11) ,
PRIMARY KEY (patient_id),
FOREIGN KEY (doctor_id) REFERENCES t_doctor(doctor_id)
);

#insert into t_doctor values(1,'sam',1234567890,'abc@email.com','ENT',350),
#(2,'def',12345678909,'def@email.com','DERMA',600),
#(3,'ghj',1234568790,'ghj@email.com','ENT',350);

update t_doctor set fees = 350 , fees = 600
			where (specialization = 'ENT' and  doctor_name like 'J%') and(specialization = 'DERMA' AND doctor_name like'J%');