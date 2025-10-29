SELECT
    id,
    name,
    guild,
    level AS "Lv.",
    name || '(' || job || ')' AS "name(job)"
FROM
    s_characters
ORDER BY
    guild,
    level DESC