CREATE TABLE p_users (
    user_id INTEGER GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(16) NOT NULL,
    zip_code CHAR(8) NOT NULL,
    birthday DATE NOT NULL,
    locale VARCHAR(5) NOT NULL,
    created_at TIMESTAMP NOT NULL,
    deleted_at TIMESTAMP,
    -- ▼ テーブルレベルの制約
    PRIMARY KEY (user_id),
    CHECK (name <> ''),
    CHECK (name ~ '^[A-Za-z]*$'),
    CHECK (zip_code ~ '^[0-9]{3}-[0-9]{4}$'),
    CHECK (birthday BETWEEN '1900-01-01' AND CURRENT_DATE),
    CHECK (locale IN ('ja', 'en', 'de', 'ru')),
    CHECK (created_at >= birthday),
    CHECK (created_at >= '2024-12-01'),
    CHECK (
        deleted_at > created_at OR
        deleted_at IS NULL
    )
);