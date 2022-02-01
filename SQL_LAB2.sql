USE SAKILA;
#Select all the actors with the first name ‘Scarlett’.
SELECT * FROM ACTOR 
WHERE FIRST_NAME= "SCARLETT";
#Select all the actors with the last name ‘Johansson’.
SELECT * FROM ACTOR
WHERE LAST_NAME="JOHANSSON";
#How many films (movies) are available for rent?
SELECT
COUNT(film_id)
FROM film;
#How many films have been rented?"
SELECT
COUNT(RENTAL_ID)
FROM RENTAL;
#What is the shortest and longest rental period?
select min(rental_duration) as min_time from film;
select max(rental_duration) as max_time from film;
#What are the shortest and longest movie duration? Name the values max_duration and min_duration.
select min(length) as min_duration from film;
select max(length) as max_duration from film;
#What's the average movie duration?
SELECT AVG(length)
FROM film;
#What's the average movie duration expressed in format (hours, minutes)?
SELECT 115.27 / 60 + (115.27 % 60) / 100.0;
SELECT TIME_FORMAT("02:47", "%H %i");
#How many movies longer than 3 hours?
select * from film
where length > "180";
select * from customer;
#Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
SELECT CONCAT(first_name," ", UPPER(last_name),"  - ", LOWER(email)) AS name_and_email from customer;
select * from film;
#What's the length of the longest film title?
SELECT MAX(LENgth(title)) as longest_length from film;
select title from film
where (length(title)) = 27;

