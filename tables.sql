--create the database

/*CREATE DATABASE Apprenti;*/

/* CREATE TABLE TechTrac (
	Id nchar(4) not null primary key,
	Description nvarchar (30) not null, 
	NumberOfWeeks int  not null,
	Available bit not null
*/

);/*
CREATE TABLE Developers (
	Id int not null primary key,  --identity(x,y)
	Firstname nvarchar(30) not null, 
	Lastname nvarchar(30) not null, 
	PrimaryEmail nvarchar(100) not null,
	SecondaryEmail nvarchar(100),
	City nvarchar(40) not null default 'Cincinnati',
	State nchar(2) not null default 'OH',
	Active bit not null default 1,
	Phone nvarchar(20) not null,
	TechTracId nchar(4) not null foreign key references TechTrac(Id),

);
*/
/*
CREATE TABLE TechTopix (
	Id int not null primary key identity (1,1),
	Description nvarchar(80) not null
);
*/
/*
CREATE TABLE TechTracTopix (
	Id int not null primary key identity(1,1),
	TechTracId nchar(4) not null foreign key references TechTrac(Id),
	TechTopixId int not null foreign key references TechTopix(Id)
);
*/


/*
CREATE TABLE Contacts (
	Firstname nvarchar(30) not null, 
	Lastname nvarchar(30) not null, 
	Phone nvarchar(20) not null,
	Email nvarchar(100) not null,
	Relationship nvarchar(20) not null,
	Address nvarchar(30) not null,
	City nvarchar(40) not null,
	State nchar(2) not null,
	Birthday datetime,
	Favorite bit not null default 1,
	LastContact datetime,
	);

Insert into Contacts
	(Firstname, Lastname, Phone, Email, Relationship, Address, City, State, Birthday, Favorite, LastContact)
values ('Drew', 'Troy', '513-255-1111', 'artroy@gmail.com', 'friend', '555 hickory lane', 'Cincinnati', 'OH', '1985/05/06', 1, '2019/08/18')

Insert into Contacts
	(Firstname, Lastname, Phone, Email, Relationship, Address, City, State, Birthday, Favorite, LastContact)
values ('Jason', 'White', '513-233-2222', 'jwhite@gmail.com', 'friend', '44 detroit ave', 'Cleveland', 'OH', '1986/08/05', 1, '2019/07/11')

Insert into Contacts
	(Firstname, Lastname, Phone, Email, Relationship, Address, City, State, Birthday, Favorite, LastContact)
values ('Mike', 'Ritz', '513-266-3333', 'mritz@gmail.com', 'brother', '33 Marcia', 'Columbus', 'OH', '1983/03/03', 1, '2019/06/11')

select * from contacts
*/


Alter table Contacts
	add BFF bit default 0;    --adds column for BFF in existing table, defaults to 0

Alter table Contacts
	alter column address nvarchar(50);   --makes existing column bigger, was 30 previously


