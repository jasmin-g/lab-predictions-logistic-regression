USE sakila;

-- 1. Create a query or queries to extract the information you think may be relevant for building the prediction model
-- It should include some film features and some rental features.
-- Use the data from May 2005.

SELECT * FROM rental;
SELECT * FROM film;

SELECT
	f.title,
    l.name AS 'language',
    f.rental_rate,
    f.length,
    f.rating,
    f.special_features,
    c.name AS 'category',
    r.rental_date
FROM film f
JOIN film_category ca USING(film_id)
JOIN category c USING(category_id)
JOIN inventory i USING(film_id)
JOIN language l USING(language_id)
JOIN rental r USING(inventory_id)
WHERE r.rental_date BETWEEN '2005-05-01' AND '2005-05-31';
    








