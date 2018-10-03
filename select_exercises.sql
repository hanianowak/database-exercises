use codeup_test_db;

-- 'The name of all albums by Pink Floyd.'
select name as 'The name of all albums by Pink Floyd' from albums where artist = 'Pink Floyd';

-- print 'The year Sgt. Pepper''s Lonely Hearts Club Band was released'
select release_date as 'The year Sgt. Pepper''''s Lonely Hearts Club Band was released' from albums where name = 'Lonely Hearts Club Band';

-- print 'The genre for Nevermind'
select genre as 'The genre for Nevermind' from albums where name = 'Nevermind';

-- print 'Which albums were released in the 1990s'
select name as 'albums released in the 1990s' from albums where release_date between 1990 and 1999;

-- print 'Which albums had less than 20 million certified sales'
select name as 'albums with less than 20 million certified sales' from albums where sales < 20;

-- print 'All the albums with a genre of "Rock"'
select name as 'all the albums with a genre of rock' from albums where genre = 'Rock';

