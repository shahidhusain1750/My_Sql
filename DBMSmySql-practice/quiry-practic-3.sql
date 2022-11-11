create database mscitsubjects;
use mscitsubjects;
create table mscitsubjects
(
	subject_number varchar(50),
    subjects_teacher varchar(50),
    subjects_name varchar(50),
    subject_marks int
);
select *from mscitsubjects;
insert into mscitsubjects values("4", "Saima Mam", "Research in Computing", 100);
drop table mscitsubjects;