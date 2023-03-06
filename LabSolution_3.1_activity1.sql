USE sakila;
SELECT * FROM sakila.staff;
-- Drop column picture from staff.
ALTER TABLE sakila.staff DROP COLUMN picture;

# 2.A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. 
#Update the database accordingly.
SELECT * FROM sakila.customer 
WHERE first_name like "%TAMMY%";


INSERT INTO staff (staff_id,first_name,last_name,address_id,email,store_id,active,username,password,last_update)
VALUES (3,'Tammy','Sanders',79,'TAMMY.SANDERS@sakilastaff.com',2,1,'Tammy',NULL,'2006-02-15 04:57:21');
SELECT * FROM sakila.staff;
########


# 3.Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1. 
INSERT INTO rental (rental_date, inventory_id, customer_id, return_date, staff_id, last_update)
VALUES
(now(),2,130,'2023-03-12 17:00:00',1,now());



