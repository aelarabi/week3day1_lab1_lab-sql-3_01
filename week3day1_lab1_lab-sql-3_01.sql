
/*Activity 1
Drop column picture from staff.
A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. Update the database accordingly.
Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1. 
You can use current date for the rental_date column in the rental table. 
Hint: Check the columns in the table rental and see what information you would need to add there. You can query those pieces of information. 
For eg., you would notice that you need customer_id information as well. 
To get that you can use the following query:
select customer_id from sakila.customer
where first_name = 'CHARLOTTE' and last_name = 'HUNTER';
*/
-- Drop column picture from staff.
use sakila;
select * from staff;
ALTER TABLE staff
DROP COLUMN picture;
select * from staff;
-- A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. Update the database accordingly
-- Jon is store 2 
select * from customer;
select * from staff;
select * from address;
select * from sakila.customer
where first_name = 'Tammy' and last_name = 'Sanders';
INSERT INTO staff (first_name,	last_name,address_id,email,	store_id,active,username,password)
VALUES ('Tammy', 'Sanders', 79,'TAMMY.SANDERS@sakilstaff.com',2,1,'Tammy',NULL);
select * from staff;

-- Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1. 
select * from rental;
select * from customer;
select customer_id from sakila.customer 
where first_name = 'CHARLOTTE' and last_name = 'HUNTER';
select * from staff;
SELECT * 
FROM film
JOIN inventory
USING(film_id)
where title='Academy Dinosaur' and store_id=1;
select * from rental
where inventory_id = 1 or inventory_id=2 or inventory_id=3 or inventory_id=4
limit 2;

INSERT INTO rental (rental_date,inventory_id,customer_id,staff_id)
VALUES (CURRENT_DATE(),4,130,1);

-- END of activity 1