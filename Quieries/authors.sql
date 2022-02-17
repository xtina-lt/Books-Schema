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
-- INSERT INTO likes() VALUE(),() # create a like coutner for the author -- PY server: generate like, save value, set as val in authors
-- INSERT INTO authors(first_name, last_name, likes_id) VALUES('Paul', 'Deitel', 1), ('Daniel', 'Liang', 2), ('Mark', 'Zegarelli', 3)


-- # UPDATE #--
-- UPDATE likes SET count = 2 WHERE id = 1
-- UPDATE likes SET count = 1 WHERE id = 2 -- PY SERVER: will need to get like id, count id += 1, set count


-- # READ # --
-- SELECT * FROM likes
SELECT authors.id, first_name, last_name, count AS likes FROM authors
JOIN likes ON likes.id = authors.likes_id
