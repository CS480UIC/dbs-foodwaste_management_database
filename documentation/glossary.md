Entity Name: Restaurant 
<br>
Synonyms: eatery, foodplace 
<br>
descripton: A restaurant is a business that serves food and drinks to customers.
Customers can have food at the restaurant, or can get takeout or get the food delivered

Entity Name:Inventory
<br>
Synonyms:reserve, stockpile
<br>
description:Inventory includes all the items, goods, merchandise, and materials necessary for a restaurant to prepare food and sell it to customers. 

Entity Name: User
<br>
synonyms:customer, end-user
<br>
desciption: user is an person who makes an order to the restaurant 

Entity Name:Employee
<br>
synonyms: worker,staff member
<br>
description: Employee is a person who works at an restaurant or works for a delivery service 

Entity Name:Offers
<br>
Synonym:discounts , coupouns
<br>
description: offers describe the percentage discounts available for each item in the restaurant 

Entity Name: Sales
<br>
Synonym:transactions,capital
<br>
description: sales describe about the daily,monthly and annual transaction reports for the restaurant 

Entity Name: Delivery
<br>
Synonym: distribution, carting
<br>
description:delivery services takes order's from the restaurant and serves the user 

Restaurants relationship

M-Many , 0- optional , 1-Mandatory

| Relation      | Maxima        | Minima    |
| ------------- |:-------------:| -----:    |
| restaurant_maintains_inventory| M-M | 1-0 |
| inventory_supplies_restaurant | M-M |  0-1 |
| user_orders_from_restaurant | M-M   |  0-0 |
| restaurant_serves_user  | M-M | 0-0 |
| restaurant_provides_offer | M-M |   0-0 |
| offer_provide_discount_to_restaurant| M-M |  0-0 |
| employee_works_for_restaurant  | 1-M | 1-0 |
| restuarant_hires_employee      | M-1 | 0-1  |
| restaurants_request_delivery | M-M | 0-0 |
| delivery_services_to_user | M-M | 0-0 |
| sales_reports_to_restaurant |     M-M  |   1-0 |
| restaurant_maintains_sale | M-M |  0-1 |


Entity Name: Restaurant

| Attribute      | Maxima        | Minima    |
| ------------- |:-------------:| -----:    |
| restaurant_id| 1-1 | 1 |
| start_time| M-M |  1 |
| end_time| M-M   |  1 |
| restaurant_address | M-1 | 1 |
| restaurant_contact | M-1 | 0 |


Entity Name: Inventory

| Attribute      | Maxima        | Minima    |
| ------------- |:-------------:| -----:    |
| item_id| 1-1 | 1 |
| item_price| M-1 |  1 |
| item_name | M-1   |  1 |
| item_in_date| M-1 | 1 |



Entity Name: User

| Attribute      | Maxima        | Minima    |
| ------------- |:-------------:| -----:    |
| user_id| 1-1 | 1 |
| order_date| M-1 |  1 |
| email | M-M   |  0 |
| phone | M-1 | 1 |
| address | M-1 | 1 |


Entity Name: Employee

| Attribute      | Maxima        | Minima    |
| ------------- |:-------------:| -----:    |
| employee_id| 1-1 | 1 |
| employee_name| M-1 |  1 |
| employee_contact| M-M   |  1 |
| employee_join_date| M-1 | 1 |


Entity Name: Offers

| Attribute      | Maxima        | Minima    |
| ------------- |:-------------:| -----:    |
| order_id| 1-1 | 1 |
| item_name| M-M |  1 |
| percentage_discount | M-1   |  1 |


Entity Name: Sales

| Attribute      | Maxima        | Minima    |
| ------------- |:-------------:| -----:    |
| sale_id| 1-1 | 1 |
| sinventory_request_cost M-M |  1 |
| daily_sale_amount| M-1  |  1 |
| current_date | M-1 | 1 |
| sales_report | M-1 | 1|
| profit | M-1 | 1|


Entity Name: Delivery

| Attribute      | Maxima        | Minima    |
| ------------- |:-------------:| -----:    |
| delivery_id| 1-1 | 1 |
| delivery_date_time| M-1 | 1 |
| delivery_address| M-1 | 1 |
| delivery_cost| M-1 | 1 |


#PD-5


##Dependent Entities and Entity Relations


-user ordersFrom restaurant
-restaurant provides delivery
-restaurant gives offers
-restaurant hires employee
-restaurant requests sales
-restaurant requests items.

##Subtype implementations in the database

Item_descriptions is a subtype of items




##cascade and restrict actions for dependency relations 

patient on delete patient_medical_history cascade;<br/>
restaurant on delete employee cascade;<br/>
restaurant on delete delivery cascade;<br/>
restaurant on delete offers cascade;<br/>
restaurant on delete sales cascade;<br/>
restaurant on delete user default;<br/>


##cascade and restrict rules on foreign keys that implement dependency relationships
user_id(user) on delete offer_id(restaurant) SET NULL;<br/>
delivery_id(delivery) on delete delivery_id(restaurant) SET NULL;<br/>
employee_id(employee) on delete employee_id(restaurant) SET NULL;<br/>
item_id(items) on delete item_id(restaurant_inventory) SET NULL;<br/>
restaurant_id(restaurant) on delete restaurant_inventory cascade;<br/>
sale_id(sales) on delete sales_id(restaurant) SET NULL;<br/>
offer_id(offers) on delete offer_id(restaurant) SET NULL;<br/>


##Implementing attribute types

1)	Items:<br/>
item_price <br/>
Type: DECIMAL(3,2) NOT NULL<br/>
Description: describes the prices of the items sold by the restaurant<br/>
Item_name<br/>
Type: VARCHAR(20) NOT NULL<br/>
Description: name of the item sold by the restaurant<br/>
Item_in_date<br/>
Type: TIMESTAMP NOT NULL<br/>
Description: date when the item was received by the restaurant.<br/>






















