Entity Name: Restaurant 
<br>
Synonyms: eatery, foodplace 
<br>
descripton: A restaurant is a business that prepares and serves food and drinks to customers.
Meals are generally served and eaten on the premises,but many restaurants also offer take-out and food delivery services.

Entity Name:Inventory
<br>
Synonyms:reserve, stockpile
<br>
description:Inventory refers to all the items, goods, merchandise, and materials held by a business for selling in the market to earn a profit. 

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
| restuarant_hires_employee      | M-1 |  0-1 |
| restaurants_request_delivery | M-M | 0-0 |
| delivery_services_to_user | M-M | 0-0 |
| sales_reports_to_restaurant |     M-M  |   1-0 |
| restaurant_maintains_sale | M-M |  0-1 |


