SELECT
    gc.guild_id,
    MAX(c.name) AS "name",
    MAX(og.name) AS "owner",
    COUNT(*) AS member_count,
    AVG(c.level) AS avg_level
FROM
    x_guild_characters AS gc
    JOIN x_characters AS c ON gc.character_id = c.character_id
    JOIN x_guilds AS g ON gc.guild_id = g.guild_id
    JOIN x_characters AS og ON g.owner_id = c.character_id
WHERE
    c.deleted_at IS NULL
GROUP BY
    gc.guild_id
ORDER BY
    COUNT(*) DESC;