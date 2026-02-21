SELECT
    i.item_id,
    i.name,
    c.name AS holder,
    j.name AS job,
    ci.qty
FROM
    n_jobs AS j
    RIGHT JOIN n_characters AS c ON c.job_id = j.job_id
    RIGHT JOIN n_character_items AS ci ON ci.character_id = c.character_id
    RIGHT JOIN n_items AS i ON i.item_id = ci.item_id
ORDER BY
    ci.item_id