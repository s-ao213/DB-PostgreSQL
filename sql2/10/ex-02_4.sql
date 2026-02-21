SELECT
    character_id,
    name,
    job_id,
    deleted_at
FROM
    x_characters
WHERE
    deleted_at IS NULL AND
    job_id IN (
        SELECT
            job_id
        FROM
            x_jobs
        WHERE
            name IN ('Wizard', 'Priest')
    )
ORDER BY
    character_id
