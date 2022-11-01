CREATE TABLE table_Student1
(
Student_id varchar(20) primary key,
Student_name varchar(40),
Stud_standard varchar(30),
Stud_section varchar(20),
Stud_address varchar(40),
Stud_FathersName varchar(40),
Stud_FathersContact varchar(20),
Stud_email varchar(40),
Student_ClassTeacher_id varchar(40)
);

insert into student values('ES','pri','12th','A','srii','raj','xxxx','yyyy');
insert into examinationmarks values('BS','aaa','saadhu','11th','A','tel','eng','hin',80,85,40,89,90,96,480,80.00,'a+','good');

SELECT stud_name,stud_standard,student_avg_marks,generalscienc100,mathematics100,generalscienc100+mathematics100 as sciencemathstotal
FROM examinationmarks where (student_avg_marks >= 75) and (generalscienc100 and mathematics100 >=75 );