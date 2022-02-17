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
-- PY server: generate like, save value, set as val in books
-- INSERT INTO likes() VALUE(), (), () # create a like coutner for the author 
-- INSERT INTO books(title, pages, likes_id) VALUES('Intro to Python',827, 4), ('Introduction To Java Programming', '1309', 5), ('Basic Math & Pre-Algebra', 355, 6)


-- # UPDATE #--
-- PY SERVER represent like click: will need to get like id, count id += 1, set count
-- UPDATE likes SET count = 10 WHERE id = 4 
-- UPDATE likes SET count = 5 WHERE id = 5 
-- UPDATE likes SET count = 2 WHERE id = 6


-- # READ # --
SELECT books.id, title, pages, count AS likes, likes.id AS likes_id FROM books
JOIN likes ON likes.id = books.likes_id