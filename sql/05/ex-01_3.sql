START TRANSACTION;
DELETE FROM s_characters
WHERE
  id IN (3, 5, 8, 9, 10, 14);

SELECT
  id,
  name
FROM
  s_characters
ORDER BY
  id;

ROLLBACK;