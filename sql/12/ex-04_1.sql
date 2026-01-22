START TRANSACTION;

SELECT
    c.character_id,
    c.name,
    c.level
UPDATE x_characters
SET
    level = level + 1
ROLLBACK;