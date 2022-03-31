use dbs_foodwaste_management_database;

CREATE PROCEDURE senior_employees AS
SELECT * FROM employee WHERE DATE(employee_join_date) >'2022-01-22'
GO;

CREATE PROCEDURE major_daily_sale AS
SELECT * FROM sales WHERE daily_sale_amount > 1500
GO;

CREATE PROCEDURE costly_ite msAS
SELECT * FROM items WHERE item_price > 200
GO;



CREATE FUNCTION find_restaurants
RETURNS VARCHAR(45)
READS SQL DATA

BEGIN
	SELECT restaurant_name
	FROM restaurant
	WHERE DATETIME(end_time)>'1900-01-01 18:00:00';
END;




