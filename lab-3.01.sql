-- ACTIVITY 1
-- 1. Drop column picture from staff.
USE sakila;

ALTER TABLE staff
DROP COLUMN picture;
SELECT * FROM staff;

-- 2. A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. Update the database accordingly

SELECT email, address_id FROM customer
WHERE first_name = 'TAMMY' AND last_name = 'SANDERS'; 

INSERT INTO staff(staff_id, first_name, last_name, address_id, email, store_id, active, username, password, last_update)
VALUES (3, 'TAMMY', 'SANDERS', '79', 'TAMMY.SANDERS@sakilacustomer.org', 2, 1, 'tammy', '', CURDATE());  
SELECT * FROM staff;

/*Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1.
You can use current date for the rental_date column in the rental table. 
Hint: Check the columns in the table rental and see what information you would need to add there. 
You can query those pieces of information. For eg., you would notice that you need customer_id information as well.
 Use similar method to get inventory_id, film_id, and staff_id.
 */ 

INSERT INTO rental(rental_id, rental_date, inventory_id, customer_id, return_date, staff_id, last_update)
VALUES (16050, CURDATE(), 3, 130, CURDATE(), 1, CURDATE());

SELECT * FROM rental
WHERE customer_id = 130;

