--
-- create tables
--

DROP TABLE IF EXISTS products; 
CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(15),
  name VARCHAR(255),
  description TEXT,
  price NUMERIC(10, 2)
);


--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price) values ('Cozy knitted Molly Weasley sweater', 'Een zachte gebreide trui die identiek is aan de kersttruien van de liefste moeder uit Harry Potter.', '816905633-0', 22.50);
insert into products (name, description, code, price) values ('Hogwarts mug', 'Een grote mok met Hogwarts erop, waar alje warme dranken in kunnen.', '077030122-3', 15);
insert into products (name, description, code, price) values ('Hermiones wand', 'De toverstok van Hermione Granger, waarmee je al je dromen waar kan maken.', '445924201-X', 30);
insert into products (name, description, code, price) values ('Chocolate frog', 'Een heerlijke verassing van chocolade met een collectable card van een beroemde tovenaar.', '693155505-7', 4.50);
insert into products (name, description, code, price) values ('Marauders map notebook', 'Een handig notitieboekje waar je al je geheimen in kunt opschrijven met de marauders map erop.', '686928463-6', 10);
insert into products (name, description, code, price) values ('Filled Hogwarts trunk', 'Een echte Hogwarts koffer met leuke spulletjes.', '492662523-7', 75);

