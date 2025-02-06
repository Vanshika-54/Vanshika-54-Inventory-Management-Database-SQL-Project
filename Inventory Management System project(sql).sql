create database inventorydb
use inventorydb

select * from products
select * from suppliers
select * from  sales
select * from  purchases

 create table products(ProductId INT PRIMARY KEY ,Name VARCHAR(100) NOT NULL,Category VARCHAR(50),
    Price FLOAT NOT NULL,StockQuantity INT NOT NULL,SupplierId INT,
    LastUpdated DATETIME DEFAULT GETDATE())

	insert into products values (1,'Gaming-Laptop','Electronic',50000,50,101,'')
	insert into products values (2,'I-phone','Electronic',80000,5,102,'')
	insert into products values (3,'Plushy','Stuff Toy',5000,20,103,'')
	insert into products values (4,'Registers','Stationery',100,30,104,'')
	insert into products values (5,'Smart-Watch','Electronic',20000,42,105,'')



	
  create table suppliers (SupplierId INT PRIMARY KEY,Name VARCHAR(100) NOT NULL,Contact VARCHAR(50),Email VARCHAR(100),
    State TEXT)

	insert into suppliers values(101,'Ankit Kumar','9234567891','ankit@gmail.com','Delhi')
	insert into suppliers values(102,'Yash Arora','8234567891','ankit@gmail.com','Punjab')
	insert into suppliers values(103,'Jatin Sachdeva','4234567891','ankit@gmail.com','Delhi')
	insert into suppliers values(104,'Rohit Patil','7234567891','ankit@gmail.com','Agra')
	insert into suppliers values(105,'Ankush Yadav','6234567891','ankit@gmail.com','Delhi')



  create table sales (SaleId INT PRIMARY KEY,ProductId INT,Quantitysold INT NOT NULL,
    SalesDate  DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (ProductId) REFERENCES products(ProductId) ON DELETE CASCADE)

	insert into sales values (1,1,50,'')
	insert into sales values (2,2,3,'')
	insert into sales values (3,3,18,'')
	insert into sales values (4,4,80,'')
	insert into sales values (5,5,35,'')



	CREATE TABLE purchases (PurchaseId INT PRIMARY KEY,ProductId INT,SupplierId INT,QuantityPurchased INT NOT NULL,
	PurchasePrice DECIMAL(10,2) NOT NULL,PurchaseDate DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (ProductId) REFERENCES products(ProductId) ON DELETE CASCADE,
    FOREIGN KEY (SupplierId) REFERENCES suppliers(SupplierId) ON DELETE SET NULL)


	insert into purchases Values (11,1,101,80,50000.00, '')
	insert into purchases Values (12,2,102,10,50000.00, '')
	insert into purchases Values (13,3,103,30,50000.00, '')
	insert into purchases Values (14,4,104,40,50000.00, '')
	insert into purchases Values (15,5,105,50,50000.00, '')

update products set StockQuantity= 4 where ProductId=2


Delete from products where ProductId=2



select name, StockQuantity from products where StockQuantity >10;

alter table products add PName Varchar(50)

update products set PName='Gaming-Laptop' where ProductId=1
update products set PName='I-phone' where ProductId=2
update products set PName= 'Plushy' where ProductId=3
update products set PName='Registers' where ProductId=4
update products set PName='Smart-Watch' where ProductId=5

alter table	products drop column  PName 
	





