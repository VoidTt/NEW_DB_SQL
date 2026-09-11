USE db0

--DROP TABLE sales
--go
--CREATE SCHEMA notSales


go
CREATE TABLE saless.products(
id int NOT NULL,
name nvarchar(100),
price money,
created_at datetime
)
