-- Toda pessoa funcionária no banco hr possui um histórico completo de cargos.
-- Logo, crie uma procedure chamada exibir_historico_completo_por_funcionario que,
-- dado o e-mail de uma pessoa funcionária, retorna todos os cargos em seu histórico

USE hr;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(50))
BEGIN
SELECT CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome completo',
d.DEPARTMENT_NAME AS 'Departamento',
j.JOB_TITLE AS 'Cargo'
FROM hr.employees e
INNER JOIN  hr.job_history jh
ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
INNER JOIN hr.jobs j
ON j.JOB_ID = jh.JOB_ID
INNER JOIN hr.departments d
ON d.DEPARTMENT_ID = jh.DEPARTMENT_ID
WHERE e.EMAIL = email
ORDER BY `Departamento`, `Cargo`;
END $$

DELIMITER $$
