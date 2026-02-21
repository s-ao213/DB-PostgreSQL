SELECT
    i.item_id,
    i.name,
    SUM(ci.qty)
FROM
    x_items AS i
    JOIN x_character_items AS ci ON ci.item_id = i.item_id
GROUP BY
    i.item_id
HAVING
    SUM(qty) >= 6
ORDER BY
    i.item_id