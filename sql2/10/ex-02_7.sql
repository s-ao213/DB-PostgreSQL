SELECT
    character_id,
    name,
    (
        SELECT
            COUNT(*)
        FROM
            x_character_items AS ci
        WHERE
            character_id = c.character_id
    ) AS item_kinds
FROM
    x_characters AS c
ORDER BY
    character_id