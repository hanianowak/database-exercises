use adlister;


-- For a given ad, what is the email address of the user that created it?
select email
from ads
join users on users.id=ads.user_id
where ads.id=2;


-- For a given ad, what category, or categories, does it belong to?
select name as category
from ads
join user_ad on user_ad.ad_id= ads.id
join categories on categories.id=user_ad.category_id
where ads.id=1;


-- For a given category, show all the ads that are in that category.
select title as ads
from categories
join user_ad on user_ad.category_id=categories.id
join ads on ads.id=user_ad.ad_id
where categories.name='for sale';

-- For a given user, show all the ads they have posted.
select title
from users
join ads on ads.user_id=users.id
where users.id=3;