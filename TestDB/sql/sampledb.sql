drop database if exists sampledb;
create database sampledb;
use sampledb;


create table sample_table(
No int,
name varchar(255),
age int,
Mail varchar(255)
);

insert into sample_table value(1,"Yamada",21,"xxx@yahoo.cp.jp");
insert into sample_table value(2,"Sato",39,"yyy@google.com");
insert into sample_table value(3,"Harada",44,"zzz@yahoo.com.jp");
