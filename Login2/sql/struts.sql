set names utf8;
set foreign_key_checks = 0;
drop database if exists logindb_nk;
create database logindb_nk;
use logindb_nk;

drop table if exists user;

create table user(
id int(11),
user_name varchar(255),
password varchar(255)
);

insert into user(id,user_name,password) values
(1,"yamada","111"),
(2,"nakamura","222"),
(3,"kataoka","333"),
(4,"satou","444");

