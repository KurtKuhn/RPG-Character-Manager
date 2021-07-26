/*Insert Values into the Tables*/
INSERT INTO guilds (guild_name, guild_description)
VALUES ('Merchants', 'You like? You buy! I give you a good price'),
       ('Mage Guild', 'Never trust a mage'),
       ('Dark Brotherhood', 'I just want a nightmare-ish looking horse to ride on'),
       ('Cenarion Circle', 'Harmonious order that watches over the worlds druids and their practices.'),
       ('Banking', 'They really just want your money.');

INSERT INTO classes (class_name, stat_bonus, stat_bonus_name) 
VALUES ('Rogue', 2, 'Dexterity'),
       ('Bard', 2, 'Charisma'),
       ('Fighter', 2, 'Strength'),
       ('Wizard', 2, 'Intelligence'),
       ('Druid', 2, 'Intelligence');

INSERT INTO characters (first_name, last_name, strength, dexterity, endurance, intelligence, guild_id, class_id)
VALUES ('Grey', 'Skull', 12, 15, 13, 8, 2, 3),
       ('Dryany', 'Enyn', 8, 12, 8, 15, 5, 2),
       ('Adriel', 'Serielye', 10, 15, 12, 11, 1, 3),
       ('Chald', 'Omega', 20, 15, 15, 15, 3, 2); 

INSERT INTO schools (school_name, school_description)
VALUES ('Abjuration', 'They create magical barriers, negate harmful effects, harm trespassers, or banish creatures to other planes.'),
       ('Enchantment ', 'Spells affect the minds of others, influencing or controlling their behavior.'),
       ('Evocation', 'Spells that manipulate energy or create something from nothing.'),
       ('Illusion', 'Spells deceive the senses or minds of others.'),
       ('Transmutation','Spells that transform the target.');

INSERT INTO spells (spell_name, spell_level, spell_description, school_id) 
VALUES ('Armor of Agathys', 1, 'A protective magical force surrounds you, manifesting as a spectral frost that covers you and your gear.', 1),
    ('Banishment', 4, 'You attempt to send one creature that you can see within range to another place of existence.', 1), 
    ('Charm Person', 1, 'You attempt to charm a humanoid you can see within range.', 2),
    ('Modify Memory', 5, 'You attempt to reshape another creature’s memorie', 2),
    ('Fire Bolt', 1, 'You hurl a mote of fire at a creature or object within range.', 3),
    ('Otiluke`s Freezing Sphere', 6, 'A frigid globe of cold energy streaks from your fingertips to a point of your choice within range', 3),
    ('Muffle', 1, 'You touch a willing creature or object and their countenance dims slightly and becomes silent.', 4),
    ('Gorgon`s Glare', 7, 'ou create a horrifying illusion, changing your face to that of a horrifying monster.', 4),
    ('Magnetism ', 1, 'You activate a magnetic field which allows you to lift and manipulate up to 500 lbs of metal within 30 feet of you.', 5),
    ('Metal to Wood', 7, 'This spell allows you to convert all metal objects into wood', 5);


INSERT INTO characters_spells (char_id, spell_id)
VALUES (1, 2),
       (1, 5),
       (2, 4), 
       (2, 3),
       (3, 4),
       (3, 3),
       (4, 8),
       (4, 1);

