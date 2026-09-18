USE db0
go

--CREATE TABLE orders(
--id uniqueidentifier,
--name uniqueidentifier,
--price uniqueidentifier,
--created_at uniqueidentifier
--)
--go

INSERT INTO orders
VALUES(
	NewId(), NewId(), NewId(),
	DATEPART(MILLISECOND, GetDate())
)
go 100000

--SET STATISTICS IO ON

--SELECT *
--FROM orders 
--WHERE id = 'CE643DC3-9104-47BE-8885-41AD7EC496DC'

--CREATE CLUSTERED INDEX pk_orders_1
--ON orders(id)
