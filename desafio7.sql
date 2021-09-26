-- Faça um relatório que mostra o histórico de cargos das pessoas empregadas que iniciaram seus cargos nos meses de janeiro,
-- fevereiro ou março

SELECT 
    UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) AS 'Nome completo',
    jh.START_DATE AS 'Data de início do cargo',
    e.SALARY AS 'Salário'
FROM
    hr.employees e
        INNER JOIN
    hr.job_history jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
ORDER BY `Nome completo`, `Data de início do cargo`;
