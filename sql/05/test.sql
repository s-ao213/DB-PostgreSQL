SELECT
    c.name,
    g.name
FROM
    x_guild_characters gc
    INNER JOIN x_characters c ON gc.character_id = c.character_id
    INNER JOIN x_guilds g ON gc.guild_id = g.guild_id;