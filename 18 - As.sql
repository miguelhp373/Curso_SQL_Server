-- AS
-- SERVE PARA RENOMEAR COLUNAS, SELECT, ETC

SELECT TOP 10 ListPrice AS 'PRE�O'
FROM Production.Product

SELECT TOP 10 AVG(ListPrice) AS 'M�DIA'
FROM Production.Product



-- DESAFIOS

-- 1

SELECT FirstName AS 'PRIMEIRO NOME', LastName AS 'ULTIMO NOME'
FROM Person.Person

-- 2

SELECT PRODUCTNUMBER AS 'NUMERO DO PRODUTO'
FROM Production.Product


-- 3
 SELECT UnitPrice AS 'PRE�O UNIT�RIO'
 FROM Sales.SalesOrderDetail