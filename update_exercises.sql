use codeup_test_db;

-- Write SELECT statements to output each of the following with a caption:
--
-- All albums in your table.
select name from albums;
update albums set sales = sales*10;
select name from albums;
--
--
-- All albums released before 1980
select name from albums where release_date < 1980;
update albums set release_date = release_date-100 where release_date < 1980;
select name from albums where release_date < 1900;

-- All albums by Michael Jackson
select name from albums where artist = 'Michael Jackson';
update albums set artist = 'Peter Jackson' where artist = 'Michael Jackson';
select artist, name from albums where artist = 'Peter Jackson';



-- After each SELECT add an UPDATE statement to:
--
-- Make all the albums 10 times more popular (sales * 10)
-- Move all the albums before 1980 back to the 1800s.
-- Change 'Michael Jackson' to 'Peter Jackson'
-- Add SELECT statements after each UPDATE so you can see the results of your handiwork.

