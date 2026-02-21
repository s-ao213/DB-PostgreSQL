SELECT
    g.guild_id,
    MAX(g.name) AS guild,
    MAX(j.name) AS job,
    COUNT(*) AS count
FROM
    x_guild_characters AS gc
    JOIN x_characters AS c ON c.character_id = gc.character_id
    JOIN x_guilds AS g ON g.guild_id = gc.guild_id
    JOIN x_jobs AS j ON c.job_id = j.job_id
WHERE
    c.deleted_at IS NULL
GROUP BY
    g.guild_id,
    j.job_id
ORDER BY
    g.guild_id,
    j.job_id
