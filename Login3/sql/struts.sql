set names utf8;
set foreign_key_checks = 0;
drop database if exists logindb_keisuke;
create database logindb_keisuke;
use logindb_keisuke;


drop table if exists user;

create table user(
id int(11),
user_name varchar(255),
password varchar(255));

insert into user(id,user_name,password) values
(1,"kousei","999"),
(2,"keisuke","888"),
(3,"hideya","777"),
(4,"bikutoru","666");