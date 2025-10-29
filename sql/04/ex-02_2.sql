SELECT
    id,
    name,
    last_login_at,
    (CURRENT_DATE - CAST(last_login_at AS DATE)) || 'day ago' AS "Days Since Last Login"
FROM
    s_characters