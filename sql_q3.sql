use march_3;

-- CREATE table users (
--     user_id int primary key,
--     username varchar(20)
-- );

-- INSERT into users(user_id, username) values 
--     (1, 'John Doe'),
--     (2, 'Jane Don'),
--     (3, 'Alice Jones'),
--     (4, 'Lisa Romero');

-- CREATE table training_details (
--     user_training_id int,
--     user_id int,
--     training_id int,
--     training_date date
-- );

-- INSERT into training_details(user_training_id, user_id, training_id, training_date) values
--     (1, 1, 1, '2015-08-02'),
--     (2, 2, 1, '2015-08-03'),
--     (3, 3, 2, '2015-08-02'),
--     (4, 4, 2, '2015-08-04'),
--     (5, 2, 2, '2015-08-03'),
--     (6, 1, 1, '2015-08-02'),
--     (7, 3, 2, '2015-08-04'),
--     (8, 4, 3, '2015-08-03'),
--     (9, 1, 4, '2015-08-03'),
--     (10, 3, 1, '2015-08-02'),
--     (11, 4, 2, '2015-08-04'),
--     (12, 3, 2, '2015-08-02'),
--     (13, 1, 1, '2015-08-02'),
--     (14, 4, 3, '2015-08-03');


SELECT u.user_id,u.username,td.training_id,COUNT(*) AS lesson_count,MAX(td.training_date) AS most_recent_lesson_date FROM  users u
INNER JOIN  training_details td ON u.user_id = td.user_id
GROUP BY u.user_id, u.username, td.training_id HAVING COUNT(*) > 1
ORDER BY most_recent_lesson_date DESC;
