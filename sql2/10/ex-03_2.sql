SELECT
    guild_id,
    name,
    (
        SELECT
            name
        FROM
            x_characters
        WHERE
            character_id = x_guilds.owner_id
    ) AS "owner_name",
    (
        SELECT
            level
        FROM
            x_characters
        WHERE
            character_id = x_guilds.owner_id
    )
FROM
    x_guilds
GROUP BY
    guild_id