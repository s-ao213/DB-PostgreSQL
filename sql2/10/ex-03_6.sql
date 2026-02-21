SELECT
    j.job_id,
    j.name AS job,
    COUNT(c.job_id) AS count
FROM
    x_jobs AS J
    JOIN x_characters AS c ON j.job_id = c.job_id
WHERE
    c.deleted_at IS NULL
GROUP BY
    j.job_id
ORDER BY
    j.job_id