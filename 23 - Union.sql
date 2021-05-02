-- UNION
-- ELE COMBINA DOIS OU MAIS RESULTADOS DE UM SELECT EM UM RESULTADO APENAS

/*
	EXEMPLO:
		-- RETORNA TODOS OS DADOS SEM DUPLICATAS
		SELECT COLUMN1, COLUMN2
		FROM TABLE1
		UNION
		SELECT COLUMN1, COLUMN2
		FROM TABLE 2

		-- RETORNA TODOS OS DADOS INCLUINDO OS DUPLICADOS

		SELECT COLUMN1, COLUMN2
		FROM TABLE1
		UNION ALL
		SELECT COLUMN1, COLUMN2
		FROM TABLE 2
*/

-- EXEMPLO

SELECT FirstName,Title
FROM Person.Person
WHERE Title = 'MR.'
UNION
SELECT FirstName,Title
FROM Person.Person
WHERE MiddleName = 'A'

-- DESAFIO
SELECT NAME,Color
FROM Production.Product
WHERE NAME LIKE '%A%' OR COLOR = 'BLACK'
UNION
SELECT NAME,Color
FROM Production.Product
WHERE NAME LIKE '%G%' OR COLOR = 'RED'
ORDER BY NAME ASC
