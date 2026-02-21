SELECT
    c.character_id,
    c.name,
    j.name AS job,
    c.deleted_at
FROM
    x_jobs AS J
    JOIN x_characters AS c ON c.job_id = j.job_id
WHERE
    j.name IN ('Wizard', 'Priest') AND
    c.deleted_at IS NULL
ORDER BY
    character_id