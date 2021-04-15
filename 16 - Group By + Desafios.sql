-- GROUP BY 

/*
	O GROUP BY BASICAMENTE DIVIDE O RESULTADO DA SUA PESQUISA EM GRUPOS
	
	EXEMPLO:
	PARA CADA GRUPO VOC� PODE APLICAR UMA FUN��O DE AGREGA��O, POR EXEMPLO:
		- CALCULAR A SOMA DE ITEMS
		- CONTAR O N�MERO DE ITEMS NAQUELE GRUPO

		SINTAXE:
			SELECT COLUNA1, FUN��OAGREGA��O(COLUNA2)
			FROM TABLE
			GROUP BY COLUNA1
*/

SELECT *
FROM Sales.SalesOrderDetail


SELECT SpecialOfferID, SUM(UnitPrice) AS 'SOMA'
FROM SALES.SalesOrderDetail
GROUP BY SpecialOfferID

-- VAMOS DIZER QUE EU QUERO SABER QUANTOS CADA PRODUTO FOI VENDIDO AT� HOJE
/*
	O GROUP BY AGRUPAR OS VALORES DE TODAS AS LINHAS IGUAIS
*/

SELECT ProductID, COUNT(ProductID) AS 'TOTAL PRODUTOS'
FROM  Sales.SalesOrderDetail
GROUP BY ProductID

-- VAMOS DIZER QUE EU QUERO SABER QUANTOS NOMES DE CADA NOME TEMOS CADASTRADOS EM NOSSO BANCO DE DADOS

SELECT FirstName, COUNT(FirstName) AS 'TOTAL DE NOMES'
FROM Person.Person
GROUP BY FirstName


-- DESAFIOS

/*
	1 - NA TABELA PRODUCT.PRODUCTION EU QUERO SABER A M�DIA DE PRE�O PARA OS PRODUTOS QUE S�O PRATAS(SILVER)
*/

SELECT 	Color, AVG(ListPrice) AS 'MEDIA DE PRE�O'
FROM Production.Product
WHERE COLOR  = 'SILVER'
GROUP BY Color


/*
	2 - EU PRECISO SABER QUANTAS PESSOAS TEM O MESMO MIDDLENAME AGRUPADAS POR O MIDDLE NAME
*/

SELECT MiddleName, COUNT(MiddleName) AS 'QUANTIDADE'
FROM Person.Person
GROUP BY MiddleName

/*
	3 -  EU PRECISO SABER EM M�DIA QUAL � A QUANTIDADE(QUANTITY) QUE CADA PRODUTO � VENDIDO NA LOJA
*/

SELECT ProductID, AVG(OrderQty) AS 'M�DIA'
FROM Sales.SalesOrderDetail
GROUP BY ProductID

/*
	4 - EU QUERO SABER QUAL FORAM AS 10 VENDAS QUE NO TOTAL TIVERAM OS MAIORES VALORES DE VENDA(LINETOTAL) POR PRODUTO
	DO MAIOR VALOR PARA O MENOR
*/

SELECT TOP 10 ProductID, SUM(LineTotal)
FROM Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY SUM(LineTotal) DESC

/*
	5 - EU PRECISO SABER QUANTOS PRODUTOS E QUAL � QUANTIDADE M�DIA DE PRODUTOS TEMOS CADASTRADOS NAS NOSSAS ORDENS DE 
	SERVI�O(WORK ORDER), AGRUPADOS POR PRODUCTID
*/
 
SELECT ProductID, COUNT(ProductID) AS 'TOTAL', 
AVG(OrderQty) AS 'MEDIA' 
FROM Production.WorkOrder
GROUP BY ProductID











