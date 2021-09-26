-- Exiba os países e indicando se cada um deles se encontra ou não na região formada pela Europa

SELECT 
    c.COUNTRY_NAME AS 'País',
    IF(r.REGION_NAME = 'Europe',
        'incluído',
        'não incluído') AS 'Status Inclusão'
FROM
    hr.countries c
        INNER JOIN
    hr.regions r ON c.REGION_ID = r.REGION_ID
ORDER BY c.COUNTRY_NAME;
