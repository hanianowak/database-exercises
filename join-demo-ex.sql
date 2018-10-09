use join_test_db;

-- Use join, left join, and right join to combine results from the users and roles tables as we did in the lesson.
-- Before you run each query, guess the expected number of results.

SELECT users.name as user_name, roles.name as role_name
FROM users
JOIN roles ON users.role_id = roles.id;

SELECT users.name AS user_name, roles.name AS role_name
FROM users
LEFT JOIN roles ON users.role_id = roles.id;

SELECT users.name AS user_name, roles.name AS role_name
FROM users
RIGHT JOIN roles ON users.role_id = roles.id;

SELECT users.name as user_name, roles.name as role_name
FROM roles
LEFT JOIN users ON users.role_id = roles.id;

-- Use count and the appropriate join type to get a list of roles along with
-- the number of users that has the role. Hint: You will also need to use
-- group by in the query.

select roles.name as role, count(roles.name) as num
from roles
join users on  users.role_id = roles.id
group by roles.name;

