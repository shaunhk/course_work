DROP TABLE lightsabers;
DROP TABLE characters;

CREATE TABLE characters (
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  age INT NOT NULL,
  darkside BOOLEAN NOT NULL
);

CREATE TABLE lightsabers (
  id SERIAL8 PRIMARY KEY,
  colour VARCHAR(255) NOT NULL,
  hilt_metal VARCHAR(255) NOT NULL,
  character_id INT8 REFERENCES characters(id)
);

INSERT INTO characters (name, age, darkside) VALUES ('Obi-Wan', 27, false);
INSERT INTO characters (name, age, darkside) VALUES ('Anakin', 19, false);
INSERT INTO characters (name, age, darkside) VALUES ('Darth Maul', 32, true);
INSERT INTO characters (name, age, darkside) VALUES ('Luke Skywalker', 17, false);
INSERT INTO characters (name, age, darkside) VALUES ('Stormtrooper', 25, true);
INSERT INTO characters (name, age, darkside) VALUES ('Stormtrooper', 25, true);
INSERT INTO characters (name, age, darkside) VALUES ('Stormtrooper', 25, true);
INSERT INTO characters (name, age, darkside) VALUES ('Stormtrooper', 25, true);
INSERT INTO characters (name, age, darkside) VALUES ('Stormtrooper', 25, true);
-- UPDATE characters SET darkside = true WHERE name = 'Anakin';

UPDATE characters SET (name, darkside) = ('Darth Vader', true) WHERE name = 'Anakin';
UPDATE characters SET age = 65 WHERE name = 'Obi-Wan';
UPDATE characters SET age = 26 WHERE id = 7;

-- DELETE FROM characters WHERE name = "Darth Maul";

SELECT * FROM characters ORDER BY darkside, name;

INSERT INTO lightsabers (colour, hilt_metal, character_id) VALUES ('green', 'palladium', 1);
INSERT INTO lightsabers (colour, hilt_metal, character_id) VALUES ('red', 'gold', 3);
INSERT INTO lightsabers (colour, hilt_metal, character_id) VALUES ('blue', 'gold', 3);

SELECT * FROM lightsabers;

SELECT * FROM lightsabers WHERE character_id = 3;
