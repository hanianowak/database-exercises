use codeup_test_db;

-- Write SELECT statements for:
-- Albums released after 1991
delete from albums where release_date > 1991;

-- Albums with the genre 'disco'
delete from albums where genre = 'disco';

-- Albums by 'Whitney Houston'
delete from albums where artist = 'Whitney Houston';