 create database RealEstateDb;

 use RealEstateDb;

 create table TblLogin(Id int primary key identity(1,1),
                       UserName varchar(200) unique not null,
					   Email varchar(200) unique,
					   Password varchar(100) not null,
					   MObileNumber int,
					   isAdmin int,
					   isVender int,);

select *from TblLogin;

insert into TblLogin values('admin1','admin1@gmail.com','123',978584239,0,0);


create table TblProperty(Id int primary key identity(1,1),
                        UserName varchar(200)  not null,
                       PropertyName varchar(200)  not null,
					   PropertyDescription varchar(500),
					   PropertyImage varchar(100) not null,
					   PropertySize varchar(100) not null,
					   Propertylocation varchar(200)  not null,
					   PropertyPrice int,
					   Discount int);


create table TblVenderProperty(Id int primary key identity(1,1),
                       UserName varchar(200)  not null,
					   Email varchar(200) unique,
                       PropertyName varchar(200)  not null,
					   PropertyDescription varchar(500),
					   PropertyImage varchar(100) not null,
					   PropertySize varchar(100) not null,
					   Propertylocation varchar(200)  not null,
					   PropertyPrice int,
					   Discount int);


create table TblOrder(
                      OrderId int primary key identity(1,1),
                      FullName varchar(200),
					  UserName varchar(200) ,
					  PropertyImage varchar(100) not null,
					  VenderName varchar(200),
					  Email varchar(200) Unique,
					  Address varchar(200) ,
					  HousePrice int  );


select *from TblProperty;

select *from TblOrder;

select *from TblVenderProperty;

insert into TblVenderProperty values('shubhangi','s@gmail.com','raj-villa','near to pune','c1.jpg','40', 'mumbai', 345091, 20);

insert into TblVenderProperty values('kalyani','s@gmail.com','rony-house','in gujarat','p2.jpg','50', 'someshvar', 345091, 20);
insert into TblVenderProperty values('pragya','s@gmail.com','rajmahal','near to ambedkar library','p1..jpg','35', 'satara', 345091, 20);



drop table  TblLogin;


drop table TblOrder;
drop table TblVenderProperty;
drop table  TblProperty;


truncate table TblProperty;
truncate table TblVenderProperty;
