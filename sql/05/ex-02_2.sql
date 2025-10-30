START TRANSACTION;

UPDATE s_characters
SET  
job = 'Mage'
WHERE
job = 'Wizerd';

SELECT
id,
name,
job

FROM
s_characters
