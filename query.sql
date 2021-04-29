-- Tham số loại IN
DELIMITER //
CREATE PROCEDURE getCustomberByNumber(
    IN input_customerNumber INT(11)
)
BEGIN
    SELECT * FROM customers WHERE customerNumber = input_customerNumber;
END //
DELIMITER ;

CALL getCustomberByNumber(175);

-- Tham số loại OUT
DELIMITER //
CREATE PROCEDURE getCustomersCountByCity(
    IN in_city VARCHAR(50),
    OUT total INT
)
BEGIN
    SELECT COUNT(customernumber) INTO total FROM customers WHERE city = in_city;
END //
DELIMITER ;

CALL GetCustomersCountByCity('Lyon', @total);
SELECT @total;

-- Tham số loại INOUT
DELIMITER //
CREATE PROCEDURE increaseCounter(
    INOUT counter INT,
    IN inc INT
)
BEGIN
    SET counter = counter + inc;
END //
DELIMITER ;

SET @counter = 1;
CALL increaseCounter(@counter, 1);
CALL increaseCounter(@counter, 1);
CALL increaseCounter(@counter, 5);
SELECT @counter;
