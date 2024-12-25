/* TASK: Mark the `guild_tax` column as unused in the `guild` table. */
ALTER TABLE guild SET UNUSED COLUMN guild_tax;

/* TASK: Add a new column `test_col` of type INTEGER to the `guild` table. */
ALTER TABLE guild ADD (test_col INTEGER);

/* TASK: Remove the column `test_col` from the `guild` table. */
ALTER TABLE guild DROP COLUMN test_col;

/* TASK: Add a unique constraint on the `guild_tax` column in the `guild` table. */
ALTER TABLE guild ADD (CONSTRAINT u_guild_tax_guild UNIQUE (guild_tax));

/* TASK: Drop the `u_guild_tax_guild` constraint from the `guild` table. */
ALTER TABLE guild DROP CONSTRAINT u_guild_tax_guild;

/* TASK: Retrieve all data from the `guild` table. */
SELECT * FROM guild;

/* TASK: Update all rows in the `main_quest` table to set `main_quest_status` to 1. */
UPDATE main_quest SET main_quest_status = 1;

/* TASK: Commit the transaction to save the changes. */
COMMIT;

/* TASK: Update all rows in the `side_quest` table to set `side_quest_status` to 1. */
UPDATE side_quest SET side_quest_status = 1;

/* TASK: Commit the transaction to save the changes. */
COMMIT;

/* TASK: Display names of players in `The Grovekeepers` guild in uppercase. */
SELECT UPPER(pa.player_name)
FROM player_account pa
INNER JOIN game_account_caracter gac ON pa.id_player = gac.id_player
INNER JOIN caracter c ON gac.id_caracter = c.id_caracter
INNER JOIN character_party cp ON c.id_character_party = cp.id_party
INNER JOIN guild g ON cp.id_guild_origin = g.id_guild
WHERE g.id_guild = 5301;

/* TASK: Display names of players in guilds from the `Ashenreach Wastes` region with initial capitalization (InitCap). */
SELECT INITCAP(pa.player_name)
FROM player_account pa
INNER JOIN game_account_caracter gac ON pa.id_player = gac.id_player
INNER JOIN caracter c ON gac.id_caracter = c.id_caracter
INNER JOIN character_party cp ON c.id_character_party = cp.id_party
INNER JOIN guild g ON cp.id_guild_origin = g.id_guild
INNER JOIN region r ON g.id_region = r.id_region
WHERE r.id_region = 5101;

/* TASK: Display the number of players with characters in each game. */
SELECT 'JOCUL numit: ' || g.game_name || ' are ' || COUNT(gac.id_player) || ' nr de playeri_accounts ' AS PROPOZITIE
FROM game g
INNER JOIN game_account_caracter gac ON g.id_game = gac.id_game
GROUP BY g.game_name;

/* TASK: Extract specific letters (1st, 4th, and 6th) from character names for `The Frostbound Hunters` guild. */
SELECT LOWER(SUBSTR(REPLACE(c.caracter_name, ' ', ''), 1, 1) || 
             SUBSTR(REPLACE(c.caracter_name, ' ', ''), 4, 1) || 
             SUBSTR(REPLACE(c.caracter_name, ' ', ''), 6, 1)) AS cerinta_a
FROM caracter c
INNER JOIN character_party cp ON c.id_character_party = cp.id_party
INNER JOIN guild g ON cp.id_guild_origin = g.id_guild
WHERE g.id_guild = 5305;

/* TASK: Calculate the length of character names in the `Frostmire Tundra` region without certain letters:a,bA,bB, and without spaces. */
SELECT LENGTH(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(c.caracter_name, ' ', ''), 'a', ''), 'A', ''), 'b', ''), 'B', '')) AS cerinta_b
FROM caracter c
INNER JOIN character_party cp ON c.id_character_party = cp.id_party
INNER JOIN guild g ON cp.id_guild_origin = g.id_guild
INNER JOIN region r ON g.id_region = r.id_region
WHERE r.id_region = 5102;

/* TASK: Modify character names in the `Frostmire Tundra` region,as before but, pad to 60 characters with '%' and '&'. */
SELECT RPAD(LPAD(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(c.caracter_name, ' ', ''), 'a', ''), 'A', ''), 'b', ''), 'B', ''), 30, '%'), 60, '&') AS cerinta_c
FROM caracter c
INNER JOIN character_party cp ON c.id_character_party = cp.id_party
INNER JOIN guild g ON cp.id_guild_origin = g.id_guild
INNER JOIN region r ON g.id_region = r.id_region
WHERE r.id_region = 5102;

/* TASK: Display the number of players in each team. */
SELECT cp.party_name, COUNT(c.id_character_party) 
FROM caracter c
INNER JOIN character_party cp ON cp.id_party = c.id_character_party
GROUP BY cp.party_name;

/* TASK: Update rewards for specific guilds based on account age conditions. */
UPDATE main_quest
SET main_quest_reward = main_quest_reward * 1.1
WHERE id_party IN (
    SELECT c.id_character_party
    FROM player_account p
    INNER JOIN game_account_caracter gac ON p.id_player = gac.id_player
    INNER JOIN caracter c ON gac.id_caracter = c.id_caracter
    INNER JOIN character_party cp ON c.id_character_party = cp.id_party
    INNER JOIN guild g ON cp.id_guild_origin = g.id_guild
    WHERE id_game = 100 AND MONTHS_BETWEEN(p.account_creation_date, g.guild_birthday) >= 250
    GROUP BY c.id_character_party
);
COMMIT;

/* TASK: Add 15 months to account creation date and display new dates, next Monday, and last day of the month. */
SELECT player_name, ADD_MONTHS(account_creation_date, 15) AS new_date, 
       NEXT_DAY(ADD_MONTHS(account_creation_date, 15), 'MONDAY') AS next_monday_bruh, 
       LAST_DAY(ADD_MONTHS(account_creation_date, 15))
FROM player_account p
WHERE EXTRACT(YEAR FROM ADD_MONTHS(account_creation_date, 15)) <= 2016
ORDER BY new_date ASC;

/* TASK: Display guild names and the number of missions per guild using a natural join. */
SELECT guild_name, COUNT(id_main_quest)
FROM guild 
NATURAL JOIN main_quest
GROUP BY guild_name;

/* TASK: Calculate team rewards and experience statistics (max, min, avg, stddev). */
SELECT
MAX((SUM(mq.main_quest_reward)) + SUM(sq.side_quest_reward)) AS MAX_COINS,
MIN((SUM(mq.main_quest_reward)) + SUM(sq.side_quest_reward)) AS MIN_COINS,
TRUNC(AVG((SUM(mq.main_quest_reward)) + SUM(sq.side_quest_reward)), 2) AS AVG_COINS,
TRUNC(STDDEV((SUM(mq.main_quest_reward)) + SUM(sq.side_quest_reward)), 2) AS STDDEV_COINS,
MAX(SUM(mq.main_quest_experience_points) + SUM(sq.side_quest_experience_points)) AS MAX_EXPERIENCE,
MIN(SUM(mq.main_quest_experience_points) + SUM(sq.side_quest_experience_points)) AS MIN_EXPERIENCE,
TRUNC(AVG(SUM(mq.main_quest_experience_points) + SUM(sq.side_quest_experience_points)), 2) AS AVG_EXPERIENCE,
TRUNC(STDDEV(SUM(mq.main_quest_experience_points) + SUM(sq.side_quest_experience_points)), 2) AS STDEV_EXPERIENCE
FROM character_party cp
INNER JOIN main_quest mq ON cp.id_party = mq.id_party
INNER JOIN side_quest sq ON cp.id_party = sq.id_party
GROUP BY cp.party_name;

/* TASK: Display hierarchical structure of guilds. */
SELECT id_guild, guild_name, superior_guild, level
FROM guild
START WITH superior_guild IS NULL
CONNECT BY PRIOR id_guild = superior_guild;
