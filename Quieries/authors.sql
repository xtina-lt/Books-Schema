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
-- INSERT INTO likes(author_id, user_id) VALUE(1,1),(1,2), (2,1), (2,2), (3,1)
-- INSERT INTO authors(first_name, last_name) VALUES('Paul', 'Deitel'), ('Daniel', 'Liang'), ('Mark', 'Zegarelli')


-- # UPDATE #--
-- UPDATE likes SET count = 2 WHERE id = 1
-- UPDATE likes SET count = 1 WHERE id = 2 -- PY SERVER: will need to get like id, count id += 1, set count


-- # READ # --
-- SELECT * FROM authors
SELECT authors.id, first_name, last_name, user_id, count(user_id) AS count FROM authors
JOIN likes ON authors.id = likes.author_id
GROUP BY authors.id