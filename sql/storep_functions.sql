use dbs_foodwaste_management_database;

CREATE PROCEDURE `Employee_count` (IN id VARCHAR(20), OUT employeecount INT)
BEGIN
SELECT count(*) INTO employeecount FROM EMPLOYEE WHERE id=restaurant_id ;
END

CREATE PROCEDURE `offer_items` (IN id VARCHAR(20), OUT item_name INT)
BEGIN
SELECT offer_item_name FROM offers WHERE id=offer_id  AND percentage_discount< 50.0;
END

CREATE PROCEDURE `major_sale_daily` (IN id VARCHAR(20), OUT daily_sale_amount INT)
BEGIN
SELECT daily_sale_amount,current_date FROM sales WHERE id=sale_id  AND daily_sale_amount> 50000.00;
END

