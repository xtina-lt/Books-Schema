--------------------------------------
--        #  XTINA.CODES  #         --
--   INSERT INTO table() VALUE()    --
--  UPDATE table SET table.id = 'y' --
--      DELETE FROM table WHERE     --
--           WHERE id = #           --
--        SELECT * FROM table       --
--       GROUP BY column DESC       --
--          ORDER BY column         --
--   CONCAT_WS('delimeter', x, y)   --
--------------------------------------
-- Demonstrates complex understanding of Entity Relationship Diagrams(ERDs). 
-- Carries out Structured Language Quieries(SQL). 
-- Shows understanding of: 
-- one-to-one relationships, 
-- many-to-many relationships, 
-- SQL methods (concat_ws), 
-- and many more SQL objectives. 

#  CREATE  # --
-- INSERT INTO authors_books(author_id, book_id) VALUES(1,1), (2,2), (3,3)


-- # UPDATE #--
-- alter column names
-- ALTER TABLE authors_books
-- RENAME COLUMN authors_id TO author_id
-- ALTER TABLE authors_books
-- RENAME COLUMN books_id TO book_id


-- # READ # --
-- books: start
SELECT books.id, title, pages, CONCAT_WS(' ' ,last_name, first_name) AS author FROM books
-- merge table: join to book
JOIN authors_books ON books.id = authors_books.book_id
-- authors: join merge table
JOIN authors ON authors.id = authors_books.author_id
