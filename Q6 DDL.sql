create table CUSTOMER (PHONE_NUMBER varchar(10) primary key , customer_name varchar(100),email_id varchar(50),  
address varchar(100));

create table subscription(PHONE_NUMBER varchar(10), plan_amount int,recharge_date date,expiry_date date,
foreign key(PHONE_NUMBER) references CUSTOMER(PHONE_NUMBER),
foreign key(plan_amount) references plan(plan_amount));


create table plan (plan_amount int primary key , validity_indays int , local_voice_inmins_perday_sn int,
local_voice_inmins_perday_on int, std_voice_inmins_perday_sn int,std_voice_inmins_perday_on int,
data_ingb_perday float,sms_perday int,plan_type varchar(10) );