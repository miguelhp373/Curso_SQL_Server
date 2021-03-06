-- BETWEEN - RETORNA UM VALOR ENTRE O MINIMO E O MAXIMO

SELECT *
FROM Production.Product
WHERE ListPrice BETWEEN 1000 AND 1500


SELECT *
FROM HumanResources.Employee
WHERE HireDate BETWEEN '2009/01/01' AND '2010/01/01'
ORDER BY HireDate

-- IN - ? UTILIZADO JUNTO COM O WHERE PARA VERIFICAR SE UM VALOR CORRESPONDEM COM QUALQUER VALOR PASSADO NA LISTA DE VALORES
/*
	VALUE IN (VALUE1,VALUE2)
	VALUE IN (SELECT VALUES FROM TABLE)
*/

SELECT * FROM Person.Person
WHERE BusinessEntityID  IN(2,7,13)


-- LIKE - OPERADOR DE BUSCAS COM DETERMINADO VALOR - 
/*
	% = SUBSTITUI MAIS DE UM CARACTER
	_ = SUBSTITUI UM CARACTER
*/

SELECT *
FROM Person.Person
WHERE FirstName LIKE '%TERRI%' OR FirstName LIKE '_EE%'