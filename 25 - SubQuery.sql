--SUBQUERY

SELECT * FROM PERSON.Address
WHERE StateProvinceID IN(
	SELECT StateProvinceID FROM Person.StateProvince
	WHERE Name = 'ALBERTA'
)