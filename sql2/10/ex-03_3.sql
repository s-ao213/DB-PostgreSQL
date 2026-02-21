SELECT
    c.character_id,
    c.name,
    ci.item_id,
    ci.qty
FROM
    x_characters AS c
    JOIN x_character_items AS ci ON ci.character_id = c.character_id
ORDER BY
    c.character_id,
    ci.item_id