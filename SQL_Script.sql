create database AL

use AL

create table Student
(	
	ID		int primary key,
	Name	varchar(100) not null,
	Gender	varchar(8) not null,
	Age		int not null,
	
)

create table Account(
	UserName	varchar(100) not null primary key,
	[Password ] varchar(100) not null,
)	

insert into Account values('Churiwali','2544')
insert into Account values('Chitrolekha','1234')


drop table Student
delete from Account

create proc sp_Insert_Student	
@id int,
@name	varchar(100),
@gender	varchar(8),
@age		int 

as
begin
	insert into Student values(@id,@name,@gender,@age )
end

create proc sp_Delete_Student
@id int
as
begin
	delete from student where ID=@id
end

create proc sp_Select
as
begin
	select * from Student
end

select * from Student

create proc sp_Update_Student
@id int,
@name varchar(100),
@gender varchar(10),
@age int

as
begin
	update Student set Name=@name,Gender=@gender,Age=@age where ID=@id
end

select * from Student
