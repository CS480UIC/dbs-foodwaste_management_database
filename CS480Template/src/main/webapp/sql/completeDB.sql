DROP SCHEMA IF EXISTS `dbs_foodwaste_management_database_test` ;
CREATE SCHEMA IF NOT EXISTS `dbs_foodwaste_management_database_test` DEFAULT CHARACTER SET utf8 ;
USE `dbs_foodwaste_management_database_test` ;


DROP TABLE IF EXISTS `dbs_foodwaste_management_database_test`.`restaurant` ;

CREATE TABLE IF NOT EXISTS `dbs_foodwaste_management_database_test`.`restaurant` (
  `restaurant_id` INT UNSIGNED NOT NULL,
  `start_time` DATETIME NOT NULL,
  `end_time` DATETIME NOT NULL,
  `restaurant_address` VARCHAR(40) NOT NULL,
  `restaurant_contact` VARCHAR(10) NOT NULL,
  `restaurant_name` VARCHAR(40) NOT NULL,
  PRIMARY KEY (`restaurant_id`),
  UNIQUE INDEX `restaurant_id_UNIQUE` (`restaurant_id` ASC) VISIBLE)
ENGINE = InnoDB;



DROP TABLE IF EXISTS `dbs_foodwaste_management_database_test`.`employee` ;

CREATE TABLE IF NOT EXISTS `dbs_foodwaste_management_database_test`.`employee` (
  `employee_id` INT UNSIGNED NOT NULL,
  `employee_contact` VARCHAR(10) NOT NULL,
  `employee_join_date` DATE NOT NULL,
  `restaurant_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`employee_id`),
  UNIQUE INDEX `employee_id_UNIQUE` (`employee_id` ASC) VISIBLE,
  UNIQUE INDEX `restaurant_id_UNIQUE` (`restaurant_id` ASC) VISIBLE,
  CONSTRAINT `const_1`
    FOREIGN KEY (`restaurant_id`)
    REFERENCES `dbs_foodwaste_management_database_test`.`restaurant` (`restaurant_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



DROP TABLE IF EXISTS `dbs_foodwaste_management_database_test`.`users` ;

CREATE TABLE IF NOT EXISTS `dbs_foodwaste_management_database_test`.`users` (
  `user_id` INT UNSIGNED NOT NULL,
  `order_date` DATETIME NOT NULL,
  `user_phone` VARCHAR(10) NOT NULL,
  `user_address` VARCHAR(40) NOT NULL,
  `user_email` VARCHAR(40) NOT NULL,
  `restaurant_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE INDEX `user_id_UNIQUE` (`user_id` ASC) VISIBLE,
  UNIQUE INDEX `restaurant_id_UNIQUE` (`restaurant_id` ASC) VISIBLE,
  CONSTRAINT `const_2`
    FOREIGN KEY (`restaurant_id`)
    REFERENCES `dbs_foodwaste_management_database_test`.`restaurant` (`restaurant_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



DROP TABLE IF EXISTS `dbs_foodwaste_management_database_test`.`delivery` ;

CREATE TABLE IF NOT EXISTS `dbs_foodwaste_management_database_test`.`delivery` (
  `delivery_id` INT UNSIGNED NOT NULL,
  `delivery_date_time` DATETIME NOT NULL,
  `delivery_address` VARCHAR(40) NOT NULL,
  `delivery_cost` DECIMAL(3,2) NOT NULL,
  `restaurant_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`delivery_id`),
  UNIQUE INDEX `delivery_id_UNIQUE` (`delivery_id` ASC) VISIBLE,
  UNIQUE INDEX `restaurant_id_UNIQUE` (`restaurant_id` ASC) VISIBLE,
  CONSTRAINT `const_3`
    FOREIGN KEY (`restaurant_id`)
    REFERENCES `dbs_foodwaste_management_database_test`.`restaurant` (`restaurant_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



DROP TABLE IF EXISTS `dbs_foodwaste_management_database_test`.`offers` ;

CREATE TABLE IF NOT EXISTS `dbs_foodwaste_management_database_test`.`offers` (
  `offer_id` INT UNSIGNED NOT NULL,
  `offer_item_name` VARCHAR(40) NOT NULL,
  `percentage_discount` DECIMAL(3,2) NOT NULL,
  `restaurant_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`offer_id`),
  UNIQUE INDEX `offer_id_UNIQUE` (`offer_id` ASC) VISIBLE,
  UNIQUE INDEX `restaurant_id_UNIQUE` (`restaurant_id` ASC) VISIBLE,
  CONSTRAINT `const_4`
    FOREIGN KEY (`restaurant_id`)
    REFERENCES `dbs_foodwaste_management_database_test`.`restaurant` (`restaurant_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



DROP TABLE IF EXISTS `dbs_foodwaste_management_database_test`.`sales` ;

CREATE TABLE IF NOT EXISTS `dbs_foodwaste_management_database_test`.`sales` (
  `sale_id` INT UNSIGNED NOT NULL,
  `daily_sale_amount` DECIMAL(5,2) NOT NULL,
  `sales_report` VARCHAR(20) NOT NULL,
  `current_date` DATE NOT NULL,
  `profit` DECIMAL(5,2) NOT NULL,
  `restaurant_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`sale_id`),
  UNIQUE INDEX `sale_id_UNIQUE` (`sale_id` ASC) VISIBLE,
  UNIQUE INDEX `restaurant_id_UNIQUE` (`restaurant_id` ASC) VISIBLE,
  CONSTRAINT `const_5`
    FOREIGN KEY (`restaurant_id`)
    REFERENCES `dbs_foodwaste_management_database_test`.`restaurant` (`restaurant_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------

DROP TABLE IF EXISTS `dbs_foodwaste_management_database_test`.`items` ;

CREATE TABLE IF NOT EXISTS `dbs_foodwaste_management_database_test`.`items` (
  `item_id` INT UNSIGNED NOT NULL,
  `item_price` DECIMAL(3,2) NOT NULL,
  `item_name` VARCHAR(20) NOT NULL,
  `item_in_date` VARCHAR(45) NOT NULL,
  `itemscol` VARCHAR(45) NULL,
  PRIMARY KEY (`item_id`),
  UNIQUE INDEX `item_id_UNIQUE` (`item_id` ASC) VISIBLE)
ENGINE = InnoDB;



DROP TABLE IF EXISTS `dbs_foodwaste_management_database_test`.`item_descriptions` ;

CREATE TABLE IF NOT EXISTS `dbs_foodwaste_management_database_test`.`item_descriptions` (
  `description_id` INT UNSIGNED NOT NULL,
  `item_id` INT UNSIGNED NOT NULL,
  `item_description` VARCHAR(40) NOT NULL,
  PRIMARY KEY (`description_id`),
  INDEX `item_id_idx` (`item_id` ASC) VISIBLE,
  CONSTRAINT `const_6`
    FOREIGN KEY (`item_id`)
    REFERENCES `dbs_foodwaste_management_database_test`.`items` (`item_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



DROP TABLE IF EXISTS `dbs_foodwaste_management_database_test`.`restaurant_items` ;

CREATE TABLE IF NOT EXISTS `dbs_foodwaste_management_database_test`.`restaurant_items` (
  `restaurant_id` INT UNSIGNED NOT NULL,
  `item_id` INT UNSIGNED NOT NULL,
  `description_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`restaurant_id`, `item_id`),
  UNIQUE INDEX `restaurant_id_UNIQUE` (`restaurant_id` ASC) VISIBLE,
  UNIQUE INDEX `item_id_UNIQUE` (`item_id` ASC) VISIBLE,
  CONSTRAINT `restaurant_id`
    FOREIGN KEY (`restaurant_id`)
    REFERENCES `dbs_foodwaste_management_database_test`.`restaurant` (`restaurant_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `const_7`
    FOREIGN KEY (`item_id`)
    REFERENCES `dbs_foodwaste_management_database_test`.`items` (`item_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



DROP TABLE IF EXISTS `dbs_foodwaste_management_database_test`.`user_user_email` ;

CREATE TABLE IF NOT EXISTS `dbs_foodwaste_management_database_test`.`user_user_email` (
  `user_id` INT UNSIGNED NOT NULL,
  `user_email` VARCHAR(40) NOT NULL,
  PRIMARY KEY (`user_id`, `user_email`),
  UNIQUE INDEX `user_id_UNIQUE` (`user_id` ASC) VISIBLE,
  CONSTRAINT `const_8`
    FOREIGN KEY (`user_id`)
    REFERENCES `dbs_foodwaste_management_database_test`.`users` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



DROP TABLE IF EXISTS `dbs_foodwaste_management_database_test`.`user` ;

CREATE TABLE IF NOT EXISTS `dbs_foodwaste_management_database_test`.`user` (
  `username` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`email`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE)
ENGINE = InnoDB;



DROP TABLE IF EXISTS `dbs_foodwaste_management_database_test`.`entity1` ;

CREATE TABLE IF NOT EXISTS `dbs_foodwaste_management_database_test`.`entity1` (
  `username` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`email`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE)
ENGINE = InnoDB;