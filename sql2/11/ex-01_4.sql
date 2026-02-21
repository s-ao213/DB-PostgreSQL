SELECT
    j.job_id AS job_id,
    j.name AS job,
    c.character_id AS character_id,
    c.name AS name,
    c.level AS level
FROM
    x_jobs AS j
    JOIN x_characters AS c ON c.job_id = j.job_id
WHERE
    level = (
        SELECT
            MAX(level)
        FROM
            x_characters
        GROUP BY
            job_id
        HAVING
            job_id = c.job_id
    )
ORDER BY
    j.job_id