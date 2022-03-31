<h3>Normalization</h3>

<h4>1NF - > we have verified that All the entities in the implementation have a primary key </h4>

| Table Name | Primary Key   |
|------------|---------------|
| restaurant | restaurant_id |
| offers     | offer_id      |
| user       | user_id       |
| delivery   | delivery_id   |
| employee   | employee_id   |
| items      | item_id       |


<h4>2NF - > We have verified that all non_key columms of the tables depend on a whole primary key </h4>

| Non-key Columns                                           | Primary Key   |
|-----------------------------------------------------------|---------------|
| start_time,end_time,restaurant_address,restaurant_contact | restaurant_id |
| offer_item_name,percentage_discount,restaurant_id         | offer_id      |
| order_date,phone,address,email                            | user_id       |
| delivery_date_time,delivery_address,delivery_cost         | delivery_id   |
| employee_contact,employee_join_date                       | employee_id   |
| item_price,item_name,item_in_date                         | item_id       |


<h4>3NF - > We have verified that there are no transitive dependencies that is, a non prime attribute depends on another non prime attribute, it also satisfies all conditon of 2NF normal form  </h4>

| Non-prime Attributes                                      | Prime Attributes  |
|-----------------------------------------------------------|---------------|
| start_time,end_time,restaurant_address,restaurant_contact | restaurant_id |
| offer_item_name,percentage_discount,restaurant_id         | offer_id      |
| order_date,phone,address,email                            | user_id       |
| delivery_date_time,delivery_address,delivery_cost         | delivery_id   |
| employee_contact,employee_join_date                       | employee_id   |
| item_price,item_name,item_in_date                         | item_id       |


<h4>BCNF - > We have verified that there are no dependencies in our logical design where a prime attribute is dependent on another non prime attribute and it also satisfies all conditions for 3NF normal form  </h4>
