DELIMITER //
CREATE PROCEDURE findAllCustomer()
BEGIN
    SELECT * FROM customers;
END //
DELIMITER ;

DELIMITER //
DROP PROCEDURE IF EXISTS findAllCustomer //
CREATE PROCEDURE findAllCustomer()
BEGIN
    SELECT * FROM customers WHERE customerNumber = 175;
END //
DELIMITER ;

DELIMITER //
CREATE OR REPLACE PROCEDURE findALlCustomer()
BEGIN
    SELECT * FROM customers WHERE customerNumber = 166;
END //
DELIMITER ;
