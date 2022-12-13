CREATE DATABASE Cinemahall
USE Cinemahall

create table Movies(
Id int PRIMARY KEY identity,
Moviname nvarchar(100) NOT NULL,
Category nvarchar(100) NOT NULL,
Realeseyear int NOT NULL,
Length_movi int NOT NULL,
Language_movi nvarchar(50)NOT NULL,
Rating int NOT NULL
)

create table Crowd(
Id int primary key identity,
Name nvarchar(50) not null,
Phone int
)

CREATE TABLE TICKETS(
Id int primary key identity,
Price int not null,
CrowdId int foreign key references Crowd(Id),
Time_movi datetime,
Moviname nvarchar(100),
Movi_Id int foreign key references Movies(Id)
)

CREATE VIEW [Tickets Reports] AS
SELECT Price, CrowdId,Time_movi,Moviname,Movi_Id
FROM TICKETS
WHERE Id>0;