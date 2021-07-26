/*
drop statements to clear out old records if they exist
*/

DROP TABLE IF EXISTS characters;
DROP TABLE IF EXISTS guilds;
DROP TABLE IF EXISTS spells;
DROP TABLE IF EXISTS classes;
DROP TABLE IF EXISTS classes_spells;
DROP TABLE IF EXISTS characters_spells;
DROP TABLE IF EXISTS schools;

/* Create Tables */

/* Create Character Table */
CREATE TABLE characters (
    char_id  SERIAL PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    strength SMALLINT NOT NULL,
    dexterity SMALLINT NOT NULL,
    endurance SMALLINT NOT NULL,
    intelligence SMALLINT NOT NULL,
    class_id SMALLINT, 
    guild_id SMALLINT
);


CREATE TABLE spells (
    spell_id  SERIAL PRIMARY KEY,
    spell_name VARCHAR(255) NOT NULL,
    spell_level VARCHAR(255) NOT NULL,
    spell_description VARCHAR(255) NOT NULL,
    school_id SMALLINT NOT NULL
);


CREATE TABLE guilds (
   guild_id  SERIAL PRIMARY KEY,
   guild_name VARCHAR(255) NOT NULL,
   guild_description VARCHAR(255) NOT NULL,
   char_id SMALLINT,
   FOREIGN KEY(char_id) REFERENCES characters(char_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE classes (
   class_id  SERIAL PRIMARY KEY,
   class_name VARCHAR(255) NOT NULL,
   stat_bonus VARCHAR(255) NOT NULL,
   stat_bonus_name VARCHAR(255) NOT NULL, 
   char_id SMALLINT NULL,
   FOREIGN KEY(char_id) REFERENCES characters(char_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE schools (
  school_id SERIAL PRIMARY KEY, 
  school_name VARCHAR(255) NOT NULL,
  school_description VARCHAR(255) NOT NULL
);

CREATE TABLE classes_spells (
    class_id SMALLINT NOT NULL,
    spell_id SMALLINT NOT NULL,
    FOREIGN KEY(class_id) REFERENCES classes(class_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY(spell_id) REFERENCES spells(spell_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE 
);


CREATE TABLE characters_spells (
    char_id SMALLINT NOT NULL,
    spell_id SMALLINT NOT NULL,
    FOREIGN KEY(char_id) REFERENCES characters(char_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY(spell_id) REFERENCES spells(spell_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
    create unique index on characters_spells (char_id, spell_id) 
);

