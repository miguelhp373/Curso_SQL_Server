-- STORED PROCEDURES
--CONJUNTOS DE SQL QUE PODEM SER EXECUTADOS DE UMA VEZ SÓ
---------------------------------------------------------------



CREATE PROCEDURE SearchUser
	@INP_NOME VARCHAR(100) --variavel de entrada
	AS
	SET @INP_NOME = '%'+ @INP_NOME + '%';

	SELECT *
	FROM tbcadusuarios
	WHERE nome LIKE @INP_NOME;


EXECUTE SearchUser 'MIGUEL' --EXECUTA A PROCEDURE


-----------------------------------------

-- PROCEDURE COM RETORNO

CREATE PROCEDURE NovoUsuario
	@INP_NAME VARCHAR(100),
	@INP_PHONE VARCHAR(20)
AS
BEGIN
	INSERT INTO tbcadusuarios (nome,telefone)
	SELECT @INP_NAME,@INP_PHONE
	WHERE NOT EXISTS 
	(SELECT * FROM tbcadusuarios WHERE nome = @INP_NAME)
	
	
	

	SELECT *
	FROM tbcadusuarios
END;
GO


-- DROP PROCEDURE NovoUsuario -- APAGA PROCEDURE

EXECUTE NovoUsuario 'MICHAEL','116739821' -- CRIA UM NOVO USUARIO NA TABELA

DELETE FROM tbcadusuarios WHERE ID IN(3)

