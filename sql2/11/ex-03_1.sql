SELECT
    i.item_id,
    i.name,
    c.name AS holder,
    ci.qty
FROM
    n_characters AS c
    RIGHT JOIN n_character_items AS ci ON ci.character_id = c.character_id
    RIGHT JOIN n_items AS i ON i.item_id = ci.item_id
ORDER BY
    i.item_id