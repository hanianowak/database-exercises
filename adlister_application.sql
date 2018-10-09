use adlister;

DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS ads;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS user_ad;

create table users (
  id int unsigned not null auto_increment,
  email varchar(50) not null,
  password varchar(25) not null,
  PRIMARY KEY (id)
);

create table ads (
  id int unsigned not null auto_increment,
  title varchar(100) not null,
  description varchar(250) not null,
  user_id int unsigned not null,
  FOREIGN KEY (user_id) REFERENCES users(id),
  PRIMARY KEY (id)
);

create table categories (
  id int unsigned not null auto_increment,
  name varchar(50) not null,
  PRIMARY KEY (id)
);

create table user_ad (
  ad_id int UNSIGNED NOT NULL,
  category_id int UNSIGNED NOT NULL,
  FOREIGN KEY (ad_id) REFERENCES ads(id),
  FOREIGN KEY (category_id) REFERENCES categories(id)
);