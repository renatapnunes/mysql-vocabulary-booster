-- Crie uma função chamada buscar_quantidade_de_empregos_por_funcionario no banco de dados hr que,
-- ao receber o email de uma pessoa funcionária, retorne a quantidade de empregos presentes em seu histórico

USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE qtdade_empregos INT;
SELECT COUNT(jh.EMPLOYEE_ID)
FROM hr.job_history jh
INNER JOIN hr.employees e ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE e.EMAIL = email
INTO qtdade_empregos;
RETURN qtdade_empregos;
END $$

DELIMITER ;
