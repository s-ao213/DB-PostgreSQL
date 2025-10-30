START TRANSACTION;
DELETE FROM s_characters
WHERE
last_login_at IS NULL AND created_on <= '2023-12-31';

SELECT
id,
name,
created_on,
last_login_at

FROM
s_characters

ROLLBACK;