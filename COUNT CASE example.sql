SELECT 
	store_id,
    COUNT(CASE WHEN active = 1 THEN customer_id ELSE NULL END) AS active,
    COUNT(CASE WHEN active = 0 THEN customer_id ELSE NULL END) AS inactive 
FROM customer
GROUP BY store_id
ORDER BY store_id


SELECT 
    film_id,
    COUNT(CASE WHEN store_id = 1 THEN inventory_id ELSE NULL END) AS count_store_1_inventory,
    COUNT(CASE WHEN store_id = 2 THEN inventory_id ELSE NULL END) AS count_store_2_inventory
FROM inventory
GROUP BY 
    film_id
ORDER BY film_id