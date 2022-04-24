UNLOCK TABLES;
DROP SCHEMA IF EXISTS `dbs_foodwaste_management_database` ;
CREATE SCHEMA IF NOT EXISTS `dbs_foodwaste_management_database` DEFAULT CHARACTER SET utf8 ;
USE `dbs_foodwaste_management_database` ;


DROP TABLE IF EXISTS `dbs_foodwaste_management_database`.`restaurant` ;

CREATE TABLE IF NOT EXISTS `dbs_foodwaste_management_database`.`restaurant` (
  `restaurant_id` INT UNSIGNED NOT NULL,
  `start_time` DATETIME NOT NULL,
  `end_time` DATETIME NOT NULL,
  `restaurant_address` VARCHAR(40) NOT NULL,
  `restaurant_contact` VARCHAR(10) NOT NULL,
  `restaurant_name` VARCHAR(40) NOT NULL,
  PRIMARY KEY (`restaurant_id`),
  UNIQUE INDEX `restaurant_id_UNIQUE` (`restaurant_id` ASC) VISIBLE)
ENGINE = InnoDB;

LOCK TABLES `restaurant` WRITE;
/*!40000 ALTER TABLE `restaurant` DISABLE KEYS */;
INSERT INTO `restaurant` VALUES (1,'10:00:00','18:00:00','123 W Street',9999999999,'ambrocias'),(2,'10:00:00','18:00:00','123 S Street',9876543210,'adda'),(3,'10:00:00','18:00:00','123 P street',1234567890,'BBQ Nation'),(4,'10:00:00','19:00:00','456 W street ',9087653232,'Nizam'),(5,'9:00:00','17:00:00','12 polk street',3327894021,'madini');
/*!40000 ALTER TABLE `restaurant` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `dbs_foodwaste_management_database`.`employee` ;

CREATE TABLE IF NOT EXISTS `dbs_foodwaste_management_database`.`employee` (
  `employee_id` INT UNSIGNED NOT NULL,
  `employee_contact` VARCHAR(10) NOT NULL,
  `employee_join_date` DATE NOT NULL,
  `restaurant_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`employee_id`),
  UNIQUE INDEX `employee_id_UNIQUE` (`employee_id` ASC) VISIBLE,
  CONSTRAINT `const_1`
    FOREIGN KEY (`restaurant_id`)
    REFERENCES `dbs_foodwaste_management_database`.`restaurant` (`restaurant_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (101,9999999991,'2022-03-03',1),(102,9999999992,'2022-03-10',2),(103,9999999994,'2022-03-03',3),(104,9999988751,'2022-02-03',4),(105,9010934561,'2022-01-22',5);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;



DROP TABLE IF EXISTS `dbs_foodwaste_management_database`.`users` ;

CREATE TABLE IF NOT EXISTS `dbs_foodwaste_management_database`.`users` (
  `user_id` INT UNSIGNED NOT NULL,
  `order_date` DATETIME NOT NULL,
  `user_phone` VARCHAR(10) NOT NULL,
  `user_address` VARCHAR(40) NOT NULL,
  `user_email` VARCHAR(40) NOT NULL,
  `restaurant_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE INDEX `user_id_UNIQUE` (`user_id` ASC) VISIBLE,
  CONSTRAINT `const_2`
    FOREIGN KEY (`restaurant_id`)
    REFERENCES `dbs_foodwaste_management_database`.`restaurant` (`restaurant_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (6,'2021-02-06 00:00:00',2245397898,'Denver','hdbj@uic.edu',1),(7,'2021-03-10 00:00:00',2345678909,'Arizona','avcb@uic.edu',2),(8,'2021-04-17 00:00:00',8907657656,'Dallas','rty@uic.edu',3),(9,'2021-09-09 00:00:00',5678768787,'Madison','uji@uic.edu',4),(10,'2021-08-17 00:00:00',2345445455,'Warsaw','yuop@uic.edu',5);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;




DROP TABLE IF EXISTS `dbs_foodwaste_management_database`.`delivery` ;

CREATE TABLE IF NOT EXISTS `dbs_foodwaste_management_database`.`delivery` (
  `delivery_id` INT UNSIGNED NOT NULL,
  `delivery_date_time` DATE NOT NULL,
  `delivery_address` VARCHAR(40) NOT NULL,
  `delivery_cost` INT NOT NULL,
  `restaurant_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`delivery_id`),
  UNIQUE INDEX `delivery_id_UNIQUE` (`delivery_id` ASC) VISIBLE,
  CONSTRAINT `const_3`
    FOREIGN KEY (`restaurant_id`)
    REFERENCES `dbs_foodwaste_management_database`.`restaurant` (`restaurant_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

LOCK TABLES `delivery` WRITE;
/*!40000 ALTER TABLE `delivery` DISABLE KEYS */;
INSERT INTO `delivery` VALUES (21,'1998-02-05','Tishop street',100.00,1),(22,'2021-08-05','Laughlin street',200.00,2),(23,'2021-09-09','Harrison',30.50,3),(24,'2021-02-15','Little Italy',45.50,4),(25,'2022-03-01','New York',65.22,5);
/*!40000 ALTER TABLE `delivery` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `dbs_foodwaste_management_database`.`offers` ;

CREATE TABLE IF NOT EXISTS `dbs_foodwaste_management_database`.`offers` (
  `offer_id` INT UNSIGNED NOT NULL,
  `offer_item_name` VARCHAR(40) NOT NULL,
  `percentage_discount` DECIMAL(4,2) NOT NULL,
  `restaurant_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`offer_id`),
  UNIQUE INDEX `offer_id_UNIQUE` (`offer_id` ASC) VISIBLE,
  CONSTRAINT `const_4`
    FOREIGN KEY (`restaurant_id`)
    REFERENCES `dbs_foodwaste_management_database`.`restaurant` (`restaurant_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

LOCK TABLES `offers` WRITE;
/*!40000 ALTER TABLE `offers` DISABLE KEYS */;
INSERT INTO `offers` VALUES (26,'abc',45,1),(27,'def',50,2),(28,'Sale',70,3),(29,'Black Friday',60,4),(30,'og',20,5);
/*!40000 ALTER TABLE `offers` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `dbs_foodwaste_management_database`.`sales` ;

CREATE TABLE IF NOT EXISTS `dbs_foodwaste_management_database`.`sales` (
  `sale_id` INT UNSIGNED NOT NULL,
  `daily_sale_amount` DECIMAL(6,2) NOT NULL,
  `profit` DECIMAL(6,2) NOT NULL,
  `sales_report` VARCHAR(100) NOT NULL,
  `current_date` DATE NOT NULL,
  `restaurant_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`sale_id`),
  UNIQUE INDEX `sale_id_UNIQUE` (`sale_id` ASC) VISIBLE,
  CONSTRAINT `const_5`
    FOREIGN KEY (`restaurant_id`)
    REFERENCES `dbs_foodwaste_management_database`.`restaurant` (`restaurant_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (16,1000,1500,'got a profit of 1500!','2022-03-03',1),(17,1100,1600,'got a profit of 1600!','2022-03-03',2),(18,1200,1700,'got a profit of 1700!','2022-03-03',3),(20,1400,1800,'got a profit of 1800!','2022-03-03',4),(19,1300,1900,'got a profit of 1900!','2022-03-03',5);
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;


-- -----------------------------------------------------

DROP TABLE IF EXISTS `dbs_foodwaste_management_database`.`items` ;

CREATE TABLE IF NOT EXISTS `dbs_foodwaste_management_database`.`items` (
  `item_id` INT UNSIGNED NOT NULL,
  `item_price` DECIMAL(5,2) NOT NULL,
  `item_name` VARCHAR(20) NOT NULL,
  `item_in_date` VARCHAR(45) NOT NULL,
  `itemscol` VARCHAR(45) NULL,
  PRIMARY KEY (`item_id`),
  UNIQUE INDEX `item_id_UNIQUE` (`item_id` ASC) VISIBLE)
ENGINE = InnoDB;

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (30,210,'pizza','2022-07-08 00:00:00','2022-07-14 00:00:00'),(31,220,'strawberries','2022-08-10 00:00:00','2022-08-15 00:00:00'),(32,100,'yogurt','2022-08-10 00:00:00','2022-08-20 00:00:00'),(33,125,'cereal','2022-08-10 00:00:00','2022-09-10 00:00:00'),(34,230,'Rice','2022-08-10 00:00:00','2022-08-22 00:00:00');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `dbs_foodwaste_management_database`.`item_descriptions` ;

CREATE TABLE IF NOT EXISTS `dbs_foodwaste_management_database`.`item_descriptions` (
  `description_id` INT UNSIGNED NOT NULL,
  `item_id` INT UNSIGNED NOT NULL,
  `item_description` VARCHAR(40) NOT NULL,
  PRIMARY KEY (`description_id`),
  INDEX `item_id_idx` (`item_id` ASC) VISIBLE,
  CONSTRAINT `const_6`
    FOREIGN KEY (`item_id`)
    REFERENCES `dbs_foodwaste_management_database`.`items` (`item_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

LOCK TABLES `item_descriptions` WRITE;
/*!40000 ALTER TABLE `item_descriptions` DISABLE KEYS */;
INSERT INTO `item_descriptions` VALUES (35,30,'pepperoni pizza'),(36,31,'fresh strawberries'),(37,32,'fresh yogurt'),(38,33,'breakfast cereal'),(39,34,'Imported Basmati Rice');
/*!40000 ALTER TABLE `item_descriptions` ENABLE KEYS */;
UNLOCK TABLES;



DROP TABLE IF EXISTS `dbs_foodwaste_management_database`.`restaurant_items` ;

CREATE TABLE IF NOT EXISTS `dbs_foodwaste_management_database`.`restaurant_items` (
  `restaurant_id` INT UNSIGNED NOT NULL,
  `item_id` INT UNSIGNED NOT NULL,
  `description_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`restaurant_id`, `item_id`),
  UNIQUE INDEX `item_id_UNIQUE` (`item_id` ASC) VISIBLE,
  CONSTRAINT `restaurant_id`
    FOREIGN KEY (`restaurant_id`)
    REFERENCES `dbs_foodwaste_management_database`.`restaurant` (`restaurant_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `const_7`
    FOREIGN KEY (`item_id`)
    REFERENCES `dbs_foodwaste_management_database`.`items` (`item_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

LOCK TABLES `restaurant_items` WRITE;
/*!40000 ALTER TABLE `restaurant_items` DISABLE KEYS */;
INSERT INTO `restaurant_items` VALUES (1,30,100),(2,31,101),(3,32,102),(4,33,103),(5,34,104);
/*!40000 ALTER TABLE `restaurant_items` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `dbs_foodwaste_management_database`.`user_user_email` ;

CREATE TABLE IF NOT EXISTS `dbs_foodwaste_management_database`.`user_user_email` (
  `user_id` INT UNSIGNED NOT NULL,
  `user_email` VARCHAR(40) NOT NULL,
  PRIMARY KEY (`user_id`, `user_email`),
  UNIQUE INDEX `user_id_UNIQUE` (`user_id` ASC) VISIBLE,
  CONSTRAINT `const_8`
    FOREIGN KEY (`user_id`)
    REFERENCES `dbs_foodwaste_management_database`.`users` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

SET foreign_key_checks = 0;
LOCK TABLES `user_user_email` WRITE;
/*!40000 ALTER TABLE `user_user_email` DISABLE KEYS */;
INSERT INTO `user_user_email` VALUES (16,'abc@gmail.com'),(17,'def@gmail.com'),(18,'ghj@gmail.com'),(19,'jkl@gmail.com'),(20,'qwe@gmail.com');
/*!40000 ALTER TABLE `user_user_email` ENABLE KEYS */;
UNLOCK TABLES;
SET foreign_key_checks = 1;


DROP TABLE IF EXISTS `dbs_foodwaste_management_database`.`user` ;

CREATE TABLE IF NOT EXISTS `dbs_foodwaste_management_database`.`user` (
  `username` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`email`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE)
ENGINE = InnoDB;
SET foreign_key_checks = 0;
LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user_user_email` DISABLE KEYS */;
INSERT INTO `user` VALUES ('test','test','test@test');
/*!40000 ALTER TABLE `user_user_email` ENABLE KEYS */;
UNLOCK TABLES;
SET foreign_key_checks = 1;

DROP TABLE IF EXISTS `dbs_foodwaste_management_database`.`entity1` ;

CREATE TABLE IF NOT EXISTS `dbs_foodwaste_management_database`.`entity1` (
  `username` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`email`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE)
ENGINE = InnoDB;

LOCK TABLES `entity1` WRITE;
/*!40000 ALTER TABLE `entity1` DISABLE KEYS */;
INSERT INTO `entity1` VALUES ('ent1','ent1','ent1@ent1.com'),('qwerty','qwerty','qwerty@qwerty');
/*!40000 ALTER TABLE `entity1` ENABLE KEYS */;
UNLOCK TABLES;
