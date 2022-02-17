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
-- INSERT INTO users(name) VALUE('test'), ('xtina')


-- # READ # --
SELECT name, title AS book, concat_ws(', ', last_name, first_name) AS author FROM likes
LEFT JOIN books ON books.id = likes.book_id
LEFT JOIN authors ON authors.id = likes.author_id
LEFT JOIN users ON users.id = likes.user_id
ORDER BY name