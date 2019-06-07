-- SELECT colour FROM lightsabers;
-- SELECT lightsabers.colour FROM lightsabers;

--
-- SELECT characters.*, lightsabers.* FROM characters
-- INNER JOIN lightsabers
-- ON characters.id = lightsabers.character_id;

-- SELECT characters.name, lightsabers.colour FROM lightsabers
-- INNER JOIN characters
-- ON characters.id = lightsabers.character_id;

SELECT characters.*, lightsabers.* FROM characters
RIGHT JOIN lightsabers
ON characters.id = lightsabers.character_id;
