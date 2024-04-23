SELECT ar.`id` 					AS artist_id,
    ar.`art_museum_id` 				AS art_museum_id,
    ar.`artist_name`        			AS artist_name,
    ar.`art_category` 				AS art_category,
    ar.`country_name` 				AS country_name,
    c.`collection_date` 			AS art_collection_date,
    c.`pottery_count           `		AS pottery_count,
    p.`purchase_year` 				AS purchase_year,
    p.`purchase_month `     			AS purchase_month,
    s.`unselected` 				AS unselected,
    s.`selected`         			AS selected,
    s.`selection_type_id`              		AS selection_type_id,
    s.`future_selected` 			AS future_selected,
    s.`future_unselected` 			AS future_unselected
FROM artists AS ar
LEFT JOIN collections AS c ON c.`id` = ar.`collection_id`
LEFT JOIN purchases AS p ON p.`id` = c.`collection_purchase_id`
LEFT JOIN selections AS s ON s.`id` = ar.`selection_id`
WHERE `selection_type_id` IN (2,4,6)
LIMIT 100
