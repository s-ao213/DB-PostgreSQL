START TRANSACTION;
SELECT
id,
name,
job,
guild,
buff

FROM
s_characters;

UPDATE s_characters
SET
  buff = buff + 0.25
WHERE
  guild IS NULL AND
  job NOT IN ('Wizard', 'Priest');

SELECT
id,
name,
job,
guild,
buff

FROM
s_characters

ROLLBACK;