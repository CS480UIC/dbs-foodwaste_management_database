Entity Name: Restaurant 
<br>
Synonyms: eatery, foodplace 
<br>
descripton: A restaurant is a business that serves food and drinks to customers.
Customers can have food at the restaurant, or can get takeout or get the food delivered

Entity Name:Items
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
| items_supplies_restaurant | M-M |  0-1 |
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


Entity Name: Items

| Attribute      | Maxima        | Minima    |
| ------------- |:-------------:| -----:    |
| item_id| 1-1 | 1 |
| item_price| M-1 |  1 |
| item_name | M-1   |  1 |
| item_in_date| M-1 | 1 |
| restaurant_id | 1-1 | 1 |



Entity Name: User

| Attribute      | Maxima        | Minima    |
| ------------- |:-------------:| -----:    |
| user_id| 1-1 | 1 |
| order_date| M-1 |  1 |
| user_email | M-M   |  0 |
| user_phone | M-1 | 1 |
| uesr_address | M-1 | 1 |
| restaurant_id | 1-1 | 1 |


Entity Name: Employee

| Attribute      | Maxima        | Minima    |
| ------------- |:-------------:| -----:    |
| employee_id| 1-1 | 1 |
| employee_contact| M-M   |  1 |
| employee_join_date| M-1 | 1 |
| restaurant_id | 1-1 | 1 |


Entity Name: Offers

| Attribute      | Maxima        | Minima    |
| ------------- |:-------------:| -----:    |
| order_id| 1-1 | 1 |
| offer_item_name| M-M |  1 |
| percentage_discount | M-1   |  1 |
| restaurant_id | 1-1 | 1 |


Entity Name: Sales

| Attribute      | Maxima        | Minima    |
| ------------- |:-------------:| -----:    |
| sale_id| 1-1 | 1 |
| daily_sale_amount| M-1  |  1 |
| current_date | M-1 | 1 |
| sales_report | M-1 | 1|
| profit | M-1 | 1|
| restaurant_id | 1-1 | 1 |


Entity Name: Delivery

| Attribute      | Maxima        | Minima    |
| ------------- |:-------------:| -----:    |
| delivery_id| 1-1 | 1 |
| delivery_date_time| M-1 | 1 |
| delivery_address| M-1 | 1 |
| delivery_cost| M-1 | 1 |
| restaurant_id | 1-1 | 1 |


### Sub Type Entity : item_descriptions

| Attribute      | Maxima        | Minima    |
| ------------- |:-------------:| -----:    |
| description_id| 1-1 | 1 |
| item_id| 1-1 | 1 |
| item_description | M-1 | 1 |





# PD-5


## Dependent Entities and Entity Relations


-user ordersFrom restaurant<br/>
-restaurant provides delivery<br/>
-restaurant gives offers<br/>
-restaurant hires employee<br/>
-restaurant requests sales<br/>
-restaurant requests items.<br/>

## Subtype implementations in the database

Item_descriptions is a subtype of items




## cascade and restrict actions for dependency relations 


restaurant on delete employee cascade;<br/>
restaurant on delete delivery cascade;<br/>
restaurant on delete offers cascade;<br/>
restaurant on delete sales cascade;<br/>
restaurant on delete user default;<br/>


## cascade and restrict rules on foreign keys that implement dependency relationships
user_id(user) on delete offer_id(restaurant) SET NULL;<br/>
delivery_id(delivery) on delete delivery_id(restaurant) SET NULL;<br/>
employee_id(employee) on delete employee_id(restaurant) SET NULL;<br/>
item_id(items) on delete item_id(restaurant_inventory) SET NULL;<br/>
restaurant_id(restaurant) on delete restaurant_inventory cascade;<br/>
sale_id(sales) on delete sales_id(restaurant) SET NULL;<br/>
offer_id(offers) on delete offer_id(restaurant) SET NULL;<br/>


## Implementing attribute types

1)	Items:<br/>
item_price <br/>
Type: DECIMAL(3,2) NOT NULL<br/>
Description: describes the prices of the items sold by the restaurant<br/>
Item_name<br/>
Type: VARCHAR(20) NOT NULL<br/>
Description: name of the item sold by the restaurant<br/>
Item_in_date<br/>
Type: TIMESTAMP NOT NULL<br/>
Description: date when the item was received by the restaurant.<br/><br/>
2)employee<br/>
employee_id<br/>
type: SMALLINT UNSIGNED NOT NULL UNIQUE<br/>
description: id of the employee. Primary keys connects to restaurant table.<br/>
employee_contact<br/>
Type:VARCHAR(10) NOT NULL<br/>
Description: describes the contact number of the employee<br/>
employee_join_date<br/>
Type:DATE NOT NULL<br/>
 Description: describes join date of the employee<br/>
Item_descriptions:<br/>
description_id  SMALLINT NOT NULL<br/>
item_id SMALLINT NOT NULL<br/><br/>
3)delivery<br/>
delivery_id<br/>
Type:SMALLINT UNSIGNED NOT NULL UNIQUE<br/>
Description: contains the id of the delivery. It’s the primary key that is connected to the restaurant.<br/>
delivery_date_time<br/>
Type:DATETIME NOTNULL<br/>
Description:contains the date and time of delivery.<br/>
delivery_cost <br/>
type:DECIMAL(3,2) NOT NULL<br/>
Description:cost of the delivery<br/><br/>
4)restaurant<br/>
restaurant_id<br/>
Type: SMALLINT UNSIGNED NOT NULL UNIQUE<br/>
Description: contains ID of the restaurant. It is the primary key of the table.<br/>

start_time<br/>
type:DATETIME NOTNULL<br/>
description: contains start time of the restaurant.<br/>

end_time<br/>
type:DATETIME NOTNULL<br/>
description: contains end time of the restaurant<br/>

restaurant_address<br/>
type: VARCHAR(40) NOTNULL<br/>
description: contains the address of the restaurant<br/>

restaurant_contact<br/>
type:VARCHAR(10) NOTNULL<br/>
description: contains the contact details of the restaurant<br/>

sale_id<br/>
type: SMALLINT UNSIGNED NOT NULL UNIQUE<br/>
description: contains the id of a sale. Foreign key that connects the sales to entity.<br/>

employee_id<br/>
Type: SMALLINT UNSIGNED NOT NULL UNIQUE<br/>
Description: contains the id of the employee. Foreign key that connects employee to restaurant<br/>

user_id<br/>
type: SMALLINT UNSIGNED NOT NULL UNIQUE<br/>
Description: contains id of the user. Foreign key that connects user to restaurant<br/>

delivery_id<br/>
type:   SMALLINT UNSIGNED NOT NULL UNIQUE        NOT NULL<br/>
description: contains id of the delivery. Foreign key that connects delivery to restaurant.<br/>

offer_id<br/>
Type:   SMALLINT UNSIGNED NOT NULL UNIQUE        NOT NULL<br/>
Description: contains the id of the offer. Foreign key that connects offer to restaurant<br/>

5) User:<br/>

user_id<br/>      
Type: SMALLINT UNSIGNED NOT NULL UNOIQUE<br/>
Description: contains id of the user. Primary key that connects to the restaurant table<br/>

order_date    <br/>
Type: DATETIME NOT NULL<br/>
Description: contains date of the order.<br/>

phone<br/>           
Type: VARCHAR(10) NOT NULL<br/>
Description: contains the contact number of the user.<br/>

address      
Type:  VARCHAR(40) NOT NULL<br/>
Description: contains the address of the user.<br/>

email            
Type: VARCHAR(40) NOT NULL<br/>
Description: contains the email of the user<br/><br/>

6)offers<br/>

offer_id<br/>      
Type: SMALLINT UNSIGNED NOT NULL UNIQUE<br/>
Description: contains id of the offer.  Primary keys that connect to the restaurant table<br/>

offer_item_name <br/>       
 Type:VARCHAR(40)   NOT NULL<br/>
 Description: name of the item in offer<br/>

percentage_discount  <br/>            
Type:DECIMAL(3,2).    NOT NULL<br/>
Description: amount of discount on them item<br/><br/>

7)sales<br/>
sale_id <br/>              
Type:  SMALLINT UNSIGNED NOT NULL UNIQUE<br/>
Description: contains id of the sale. Primary key of the entity that connects to the restaurant entity.<br/>

daily_sale_amount  <br/>       
DECIMAL(5,2).  NOT NULL<br/>
description: contains a days total sales amount<br/>

sales_report   <br/>                 
type: VARCHAR(20)    NOT NULL<br/>
description: contains the report of the sales<br/>

current_date   <br/>                 
type:DATE   NOT NULL<br/>
description: gives current date<br/>

profit  <br/>                              
type:DECIMAL(5,2)   NOT NULL<br/>
description:profit of a restaurant<br/><br/>

8)item_sales<br/> 
sale_id<br/> 
Type: SMALL INT NOT NULL<br/> 
Descirption: contains sale_id that is connected to sales.<br/> 

9) item_id <br/>
Type:SMALL INT NOT NULL<br/>
Description: contains id of the item that is connected to the sales.<br/>

10)restaurant_inventory<br/>

restaurant_id  <br/>
type: SMALLINT UNSIGNED NOT NULL UNIQUE<br/>
description: contains restaurant id that is connected to the restaurant<br/>

item_id       <br/>       
type:SMALLINT UNSIGNED NOT NULL UNIQUE<br/>
description: contains restaurant id that is connected to items.<br/><br/>

 Cardinality of your attributes with NULL or NOT NULL are updated above
 
 ### Handling Plural Atrributes
 ------------------------------
 We have create a plural attribute (offers_percentage_discount) which has the foreign key (offer_id) refering the offers table , it has a primary key which is a composite 
 key of plural attribute and foreign key.

</br>
 
 ### Handling Many-Many Relation
 -------------------------------
 We are handling the many to many relations between the items and restaurant table by creating a new table restaurant_items whose primary key is the composite of two foreign keys ( restaurant_id , item_id) 

</br>

### Sub Type Entity
-------------------
We have created a subtype (item_descriptions) with a primary key ( description_id) for the items supertype entity 
