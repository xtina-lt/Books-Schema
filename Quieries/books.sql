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
-- INSERT INTO likes(book_id, user_id) VALUE(1,1),(1,2), (2,1), (2,2), (3,1)
-- INSERT INTO books(title, pages) VALUES('Intro to Python', 827), ('Introduction To Java Programming', 1309), ('Basic Math & Pre-Algebra', 355)
-- ALTER TABLE books
-- DROP COLUMN author


-- # UPDATE #--
-- ALTER TABLE books
-- MODIFY COLUMN pages INT

-- # READ # --
-- SELECT * FROM likes
SELECT books.id, title, pages, COUNT(user_id) AS likes FROM books
JOIN likes ON books.id = likes.book_id
GROUP BY books.id