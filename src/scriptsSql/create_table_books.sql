CREATE TABLE IF NOT EXISTS books (
    id SERIAL PRIMARY KEY,
    bookName VARCHAR(255) NOT NULL,
    topics VARCHAR(255)[] DEFAULT '{}',
    author_id INT REFERENCES authors(id)
);

INSERT INTO books (bookName, topics, author_id) VALUES
('book1', ARRAY['COMEDY','ROMANCE'], 1),
('book2', ARRAY['OTHER'], 2),
('book3', ARRAY['ROMANCE'], 3);