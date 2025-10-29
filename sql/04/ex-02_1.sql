SELECT
    id,
    name,
    level,
    guild
FROM
    s_characters
ORDER BY
    guild ASC NULLS LAST;