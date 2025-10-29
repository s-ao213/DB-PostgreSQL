SELECT
    id,
    name,
    lebvel,
    buff
FROM
    s_characters
WHERE
    buff >= 0.00
ORDER BY
    buff ASC,
    lebvel DESC;