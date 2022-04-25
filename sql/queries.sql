SELECT * from offers 
ORDER by percentage_discount;

SELECT * from offers
GROUP BY offer_item_name HAVING percentage_discount>50;

SELECT * from offers
WHERE offer_item_name LIKE '%a%' and offer_id>27;


##Aggregate queries

##(numeric function , string funciton , date and time function , group by and having clause) 

SELECT DISTINCT(item_name),COUNT(*) as count,SUM(item_price) as sum from items
WHERE item_price>120;

SELECT sale_id,current_date,profit from sales
HAVING profit>min(daily_sale_amount);

SELECT CONCAT('modified ',item_name) as concat_string ,LOWER(item_name) as lower_string from items
WHERE item_price>200;

SELECT timediff(end_time,start_time) as time_difference from restaurant;

SELECT datediff(item_expiry_date,item_in_date) as date_difference from items;
 
SELECT item_id, count(*) from items
GROUP BY item_name HAVING COUNT(*)>=1;



SELECT restaurant_name,delivery_id,delivery_address from restaurant
LEFT join delivery on delivery.restaurant_id = restaurant.restaurant_id;

SELECT restaurant_name,delivery_id,delivery_address from restaurant
RIGHT JOIN delivery on delivery.restaurant_id = restaurant.restaurant_id;

SELECT item_id,item_name from items
WHERE item_price>(SELECT item_price from items WHERE item_id=33);

SELECT sale_id,sales_report from sales
WHERE EXISTS(SELECT * from items WHERE item_price>220);
