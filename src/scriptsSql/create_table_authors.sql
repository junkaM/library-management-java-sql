CREATE TABLE IF NOT EXISTS authors (
    id SERIAL PRIMARY KEY,
    authorName VARCHAR(255) NOT NULL,
    sex VARCHAR(10),
    books_id INT REFERENCES books(id)
);

INSERT INTO authors (authorName, sex, books_id)