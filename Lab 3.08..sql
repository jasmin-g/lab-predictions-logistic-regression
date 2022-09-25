USE sakila;

SELECT * FROM rental;
SELECT * FROM film;

SELECT
	f.film_id,
	f.title,
    f.rental_duration,
    l.name AS 'language',
    f.rental_rate,
    f.length,
    f.rating,
    f.special_features,
    c.name AS 'category',
    MONTH(r.rental_date) AS month
    FROM film f
JOIN film_category ca USING(film_id)
JOIN category c USING(category_id)
JOIN language l USING(language_id)
JOIN inventory i USING(film_id)
JOIN rental r USING(inventory_id);
