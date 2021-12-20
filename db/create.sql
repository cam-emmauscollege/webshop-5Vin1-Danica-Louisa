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

DROP TABLE IF EXISTS category; 
CREATE TABLE category (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255)
);

DROP TABLE IF EXISTS collectie; 
CREATE TABLE collectie (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255)
);

DROP TABLE IF EXISTS kleuren; 
CREATE TABLE kleuren (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255)
);

DROP TABLE IF EXISTS kleur_kleding; 
CREATE TABLE collectie (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  products_id INTEGER,
  kleuren_id INTEGER
);
--
-- populate with data
--
-- generared using
-- curl "https://api.mockaroo.com/api/910b6c20?count=100&key=90eac760" > seed.sql
--
-- want different data? check: https://www.mockaroo.com/910b6c20
--

insert into products (name, description, code, price, category_id, collectie_id, kleur_kleding_id) values ('Ravenclaw beanie', 'Een warme wollen muts in de kleuren van Ravenclaw.', '806542899-3', 10.50);
insert into products (name, description, code, price, category_id, collectie_id, kleur_kleding_id) values ('Hufflepuff beanie', 'Een warme wollen muts in de kleuren van Hufflepuff.', '816905633-0', 10.50);
insert into products (name, description, code, price, category_id, collectie_id, kleur_kleding_id) values ('Slytherin beanie', 'Een warme wollen muts in de kleuren van Slytherin.', '077030122-3', 10.50);
insert into products (name, description, code, price, category_id, collectie_id, kleur_kleding_id) values ('Gryffindor beanie', 'Een warme wollen muts in de kleuren van Gryffindor.', '445924201-X', 10.50);
insert into products (name, description, code, price, category_id, collectie_id, kleur_kleding_id) values ('Ravenclaw sweater', 'Een gezellige gebreide trui met een Ravenclaw thema, waardoor het net voelt alsof je echt op Hogwarts zit.', '693155505-7', 30);
insert into products (name, description, code, price, category_id, collectie_id, kleur_kleding_id) values ('Hufflepuff sweater', 'Een gezellige gebreide trui met een Hufflepuff thema, waardoor het net voelt alsof je echt op Hogwarts zit.', '686928463-6', 30);
insert into products (name, description, code, price, category_id, collectie_id, kleur_kleding_id) values ('Slytherin sweater', 'Een gezellige gebreide trui met een Slytherin thema, waardoor het net voelt alsof je echt op Hogwarts zit.', '492662523-7', 30);
insert into products (name, description, code, price, category_id, collectie_id, kleur_kleding_id) values ('Gryffindor sweater','Een gezellige gebreide trui met een Gryffindor thema, waardoor het net voelt alsof je echt op Hogwarts zit.', '629572923-7', 30);
insert into products (name, description, code, price, category_id, collectie_id, kleur_kleding_id) values ('Ravenclaw scarf', 'Een dikke sjaal om je warm te houden tijdens koude dagen met het logo van Ravenclaw erop.', '946217899-7', 12.50);
insert into products (name, description, code, price, category_id, collectie_id, kleur_kleding_id) values ('Hufflepuff scarf', 'Een dikke sjaal om je warm te houden tijdens koude dagen met het logo van Hufflepuff erop.', '875470942-6', 12.50);
insert into products (name, description, code, price, category_id, collectie_id, kleur_kleding_id) values ('Slytherin scarf', 'Een dikke sjaal om je warm te houden tijdens koude dagen met het logo van Slytherin erop.', '274396510-4', 12.50);
insert into products (name, description, code, price, category_id, collectie_id, kleur_kleding_id) values ('Gryffindor scarf', 'Een dikke sjaal om je warm te houden tijdens koude dagen met het logo van Gryffindor erop.', '930321697-9', 12.50);

-- category tabel
insert into category (name) values ('beanie');
insert into category (name) values ('sweater');
insert into category (name) values ('scarf');

-- collectie tabel
insert into collectie (name) values ('Ravenclaw');
insert into collectie (name) values ('Hufflepuff');
insert into collectie (name) values ('Slytherin');
insert into collectie (name) values ('Gryffindor');

-- kleuren tabel
insert into kleuren (name) values ('rood');
insert into kleuren (name) values ('groen');
insert into kleuren (name) values ('blauw');
insert into kleuren (name) values ('geel');
insert into kleuren (name) values ('zwart');
insert into kleuren (name) values ('grijs');
insert into kleuren (name) values ('wit');

-- kledingkleuren tabel
insert into kleuren (products_id, kleuren_id) values (1, 3);
insert into kleuren (products_id, kleuren_id) values (1, 6);

insert into kleuren (products_id, kleuren_id) values (2, 4);
insert into kleuren (products_id, kleuren_id) values (2, 5);

insert into kleuren (products_id, kleuren_id) values (3, 2);
insert into kleuren (products_id, kleuren_id) values (3, 6);

insert into kleuren (products_id, kleuren_id) values (4, 1);
insert into kleuren (products_id, kleuren_id) values (4, 4);

insert into kleuren (products_id, kleuren_id) values (5, 3);
insert into kleuren (products_id, kleuren_id) values (5, 4);

insert into kleuren (products_id, kleuren_id) values (6, 4);
insert into kleuren (products_id, kleuren_id) values (6, 5);

insert into kleuren (products_id, kleuren_id) values (7, 2);
insert into kleuren (products_id, kleuren_id) values (7, 7);

insert into kleuren (products_id, kleuren_id) values (8, 4);
insert into kleuren (products_id, kleuren_id) values (8, 1);

insert into kleuren (products_id, kleuren_id) values (9, 3);
insert into kleuren (products_id, kleuren_id) values (9, 6);

insert into kleuren (products_id, kleuren_id) values (10, 4);
insert into kleuren (products_id, kleuren_id) values (10, 5);

insert into kleuren (products_id, kleuren_id) values (11, 2);
insert into kleuren (products_id, kleuren_id) values (11, 6);

insert into kleuren (products_id, kleuren_id) values (12, 1);
insert into kleuren (products_id, kleuren_id) values (12, 4);
