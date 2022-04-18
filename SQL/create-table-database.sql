--create database CRACK
--drop database CRACK

use AdventureWorks2012;

create table CRACK(
	--id int not null primary key,
	--id int not null AUTO_INCREMENT,
	id int IDENTITY(1,1) primary key,
	name varchar(50),
	[address] varchar(150) default 'adres',
	isActive bit default 1,
	createDate datetime default getdate(),
	--primary key(id)
)
insert into CRACK(id,name) values(1, 'crack')
select * from CRACK

alter table CRACK add isDelete bit
alter table CRACK drop isDelete
alter table CRACK alter column address varchar(250)

drop table CRACK
