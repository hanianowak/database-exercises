use adlister;

insert into users (email, password)
values ('hania@dow.com', 'hdhsddsk'),
        ('don@jsdjad.com', 'kasijd'),
        ('bob@jsddfds.com', 'ksijdid'),
        ('tom@kakd.com', 'okasdoksd'),
        ('peggy@dsjd.com', 'kaijddsj');


insert into ads (title, description, user_id)
values ('RKI COMMERCIAL GRADE UNDER BODY TRUCK TOOLBOX BH481818',
        'I''m selling used RKI Commercial grade under body truck tool boxes. These are high grade boxes and I have 3 for sale.', 1),
      ('Fast Unsecured Business Loans up to $1,000,000 Made Easy!',
        'Have you been turned down from the bank for a loan? We''re here to help! We say YES when Banks say No!
        We have fast unsecured business loans up to $1,000,000 that fund in 5-7 business days or less!', 2),
      ('Miller Bobcat Rig - $4750', 'Miller Bobcat 225
        Kohler 23hp VTwin 4cycle
        1100hr
        10,000 Generator
        Custom Diamond Plate Trailer', 3),
        ('OPAL PENDANT IS FOR OCTOBER - $55',
        'OPAL PENDANT SET IN 14K GOLD
        OCTOBER WILL BE HERE SOON- GREAT BIRTHSTONE GIFT.', 3);

insert into categories (name)
values ('for sale'),
      ('financial'),
      ('housing'),
      ('community');

insert  into user_ad (ad_id, category_id)
values (1, 1),
        (2, 2),
        (3, 1);



