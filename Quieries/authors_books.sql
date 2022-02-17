--------------------------------------
--        #  XTINA.CODES  #         --
--   INSERT INTO table() VALUE()    --
--  UPDATE table SET table.id = 'y' --
--      DELETE FROM table WHERE     --
--           WHERE id = #           --
--        SELECT * FROM table       --
--       GROUP BY column DESC       --
--          ORDER BY column         --
--------------------------------------

-- #  CREATE  # --
-- INSERT INTO authors_books(author_id, book_id) VALUES(1,1), (2,2), (3,3)

-- # UPDATE #--
-- ALTER TABLE authors_books RENAME COLUMN authors_id TO author_id
-- ALTER TABLE authors_books RENAME COLUMN books_id TO book_id

-- # READ # --
SELECT CONCAT_WS(', ', last_name, first_name) AS author, title AS book FROM authors_books
JOIN authors ON authors.id = authors_books.author_id
JOIN books ON books.id = authors_books.book_id