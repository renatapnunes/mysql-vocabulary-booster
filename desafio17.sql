-- Crie uma TRIGGER que, a cada nova inserção realizada na tabela orders,
-- insira automaticamente a data atual na coluna OrderDate

USE w3schools;
DELIMITER $$

CREATE TRIGGER insert_current_date_into_orders
BEFORE INSERT ON w3schools.orders
FOR EACH ROW
BEGIN
SET NEW.OrderDate = CURRENT_DATE();
END $$

DELIMITER ;
