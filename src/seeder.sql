INSERT INTO posts (content, date_published, description, title)
VALUES ('content', 'description', 'some random date', 'title');

INSERT INTO categories (category)
VALUES ('Java'),
('JavaScript'),
('HTML'),
('CSS');

/* running tests for categories */
INSERT INTO post_categories (post_id, category_id)
VALUES (1, 1),
(4, 1);