-- AS
-- SERVE PARA RENOMEAR COLUNAS, SELECT, ETC

SELECT TOP 10 ListPrice AS 'PREÇO'
FROM Production.Product

SELECT TOP 10 AVG(ListPrice) AS 'MÉDIA'
FROM Production.Product



-- DESAFIOS

-- 1

SELECT FirstName AS 'PRIMEIRO NOME', LastName AS 'ULTIMO NOME'
FROM Person.Person

-- 2

SELECT PRODUCTNUMBER AS 'NUMERO DO PRODUTO'
FROM Production.Product


-- 3
 SELECT UnitPrice AS 'PREÇO UNITÁRIO'
 FROM Sales.SalesOrderDetail