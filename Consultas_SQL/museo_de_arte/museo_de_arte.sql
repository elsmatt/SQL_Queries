SELECT ar.`id` 					AS id_artista,
    ar.`art_museum_id` 				AS id_museo_de_arte,
    ar.`name`        			        AS nombre_artista,
    ar.`art_category` 				AS categoria_arte,
    ar.`country_name` 				AS nombre_pais,
    c.`collection_date` 			AS fecha_coleccion_arte,
    c.`pottery_count           `		AS cantidad_cerámica,
    p.`purchase_year` 				AS año_compra,
    p.`purchase_month `     			AS mes_compra,
    s.`unselected` 				AS no_seleccionado,
    s.`selected`         			AS seleccionado,
    s.`selection_type_id`                       AS id_tipo_seleccion,
    s.`future_selected` 			AS seleccionado_futuro,
    s.`future_unselected` 			AS no_seleccionado_futuro
FROM artists AS ar
LEFT JOIN collections AS c ON c.`id` = ar.`collection_id`
LEFT JOIN purchases AS p ON p.`id` = c.`collection_purchase_id`
LEFT JOIN selections AS s ON s.`id` = ar.`selection_id`
WHERE `selection_type_id` IN (2,4,6)
LIMIT 100
