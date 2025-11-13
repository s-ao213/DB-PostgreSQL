START TRANSACTION;

UPDATE s_characters
SET
    job = CASE
        WHEN job = 'Fighter' THEN 'Monk'
        WHEN job = 'Monk' THEN 'Samurai'
        WHEN job = 'Samurai' THEN 'Ninja'
        ELSE 'Fighter'
    END
WHERE
    job IN ('Fighter', 'Monk', 'Samurai', 'Ninja');

SELECT
    id,
    name,
    job
FROM
    s_characters
WHERE
    job IN ('Fighter', 'Monk', 'Samurai', 'Ninja');

ROLLBACK;