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

-- # ADMIN DASHBOARD # --
-- READ ALL
SELECT likes.id AS id, book_id AS book, title, pages, authors.id AS author, first_name, last_name, name AS who_likes FROM likes
LEFT JOIN books ON books.id = likes.book_id
LEFT JOIN authors ON authors.id = likes.author_id
LEFT JOIN users ON users.id = likes.user_id
ORDER BY who_likes

-- # USER DASHBOARD # --
-- # get count of user's likes
-- SELECT COUNT(likes.id) FROM likes
-- WHERE user_id = 1

-- # display likes
-- SELECT likes.id AS like_id, title, book_id, CONCAT_WS(', ', last_name, first_name) AS author, author_id FROM likes
-- LEFT JOIN books ON books.id = likes.book_id
-- LEFT JOIN authors ON authors.id = likes.author_id
-- LEFT JOIN users ON users.id = likes.user_id
-- WHERE users.id = 1


-- EXTRA PROJECT IDEA: USER DASHBOARD !!
-- MODEL IDEA:
-- results = query
-- lst = [cls(i) for i in results]

-- CONTROLLER IDEA:
-- reading list
-- list_to_send_to_html = []
-- for i in range(len(input)):
-- if input[i].title
--   ltsth.append(input[i].title)
-- if input[i].author
--   ltsth.append(input[i].author)
-- return output =  list_to_send_to_html

-- JIJNA IDEA:
-- for i in output:
-- {{i}}