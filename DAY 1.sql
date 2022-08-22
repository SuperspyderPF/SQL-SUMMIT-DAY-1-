CREATE DATABASE myDb

ALTER DATABASE myDB
MODIFY NAME = modifiedName

DROP Database modifiedName 

USE myDb;

CREATE TABLE Book(
    BookId INT, 
	Title NVARCHAR(50),
	Price MONEY
);

ALTER TABLE Book
DROP COLUMN column1, column2

ALTER TABLE Book
ALTER COLUMN BookId int NOT NULL

ALTER TABLE Book
ADD PRIMARY KEY(BookId)

DROP TABLE Book 

CREATE TABLE Book (
      BookId int not null primary key,
	  Title nvarchar(50) not null unique,
	  Price money not null check(Price>0),
	  Author nvarchar(50) not null default 'John Smith'
)

CREATE TABLE Bookidentity (
      BookId int not null primary key identity(1,1),
	  Title nvarchar(50) not null unique,
	  Price money not null check(Price>0),
	  Author nvarchar(50) not null default 'John Smith'
)

insert into Book (BookId,Title,Price,Author)
values (1, 'Chronicles of Narnia', 6.99, 'Derrick Lewis');

insert into Book 
values (2, 'Punch Of Pain', 399.98, 'Derrick Lewis');


insert into Book 
values (3, 'Wrestling for beginners', 599.98, 'Derrick Lewis');

insert into Book (BookId,Title,Price)
values (4, 'Mike Perris Life', 6.99);

update Book
set Author='Steven Wonderboy Thompson'
where BookId=4

select * from Book

