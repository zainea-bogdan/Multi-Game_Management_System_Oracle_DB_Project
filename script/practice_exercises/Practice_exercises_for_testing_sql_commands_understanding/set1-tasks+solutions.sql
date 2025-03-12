/* TASK: Mark the `guild_tax` column as unused in the `guild` table. */
alter table guild set unused column guild_tax;

/* TASK: Add a new column `test_col` of type INTEGER to the `guild` table. */
alter table guild add (
   test_col integer
);

/* TASK: Remove the column `test_col` from the `guild` table. */
alter table guild drop column test_col;

/* TASK: Add a unique constraint on the `guild_tax` column in the `guild` table. */
alter table guild add (
   constraint u_guild_tax_guild unique ( guild_tax )
);

/* TASK: Drop the `u_guild_tax_guild` constraint from the `guild` table. */
alter table guild drop constraint u_guild_tax_guild;

/* TASK: Retrieve all data from the `guild` table. */
select *
  from guild;

/* TASK: Update all rows in the `main_quest` table to set `main_quest_status` to 1. */
update main_quest
   set
   main_quest_status = 1;

/* TASK: Commit the transaction to save the changes. */
commit;

/* TASK: Update all rows in the `side_quest` table to set `side_quest_status` to 1. */
update side_quest
   set
   side_quest_status = 1;

/* TASK: Commit the transaction to save the changes. */
commit;

/* TASK: Display names of players in `The Grovekeepers` guild in uppercase. */
select upper(pa.player_name)
  from player_account pa
 inner join game_account_caracter gac
on pa.id_player = gac.id_player
 inner join caracter c
on gac.id_caracter = c.id_caracter
 inner join character_party cp
on c.id_character_party = cp.id_party
 inner join guild g
on cp.id_guild_origin = g.id_guild
 where g.id_guild = 5301;

/* TASK: Display names of players in guilds from the `Ashenreach Wastes` region with initial capitalization (InitCap). */
select initcap(pa.player_name)
  from player_account pa
 inner join game_account_caracter gac
on pa.id_player = gac.id_player
 inner join caracter c
on gac.id_caracter = c.id_caracter
 inner join character_party cp
on c.id_character_party = cp.id_party
 inner join guild g
on cp.id_guild_origin = g.id_guild
 inner join region r
on g.id_region = r.id_region
 where r.id_region = 5101;

/* TASK: Display the number of players with characters in each game. */
select 'JOCUL numit: '
       || g.game_name
       || ' are '
       || count(gac.id_player)
       || ' nr de playeri_accounts ' as propozitie
  from game g
 inner join game_account_caracter gac
on g.id_game = gac.id_game
 group by g.game_name;

/* TASK: Extract specific letters (1st, 4th, and 6th) from character names for `The Frostbound Hunters` guild. */
select lower(substr(
   replace(
      c.caracter_name,
      ' ',
      ''
   ),
   1,
   1
)
             || substr(
   replace(
      c.caracter_name,
      ' ',
      ''
   ),
   4,
   1
)
             || substr(
   replace(
      c.caracter_name,
      ' ',
      ''
   ),
   6,
   1
)) as cerinta_a
  from caracter c
 inner join character_party cp
on c.id_character_party = cp.id_party
 inner join guild g
on cp.id_guild_origin = g.id_guild
 where g.id_guild = 5305;

/* TASK: Calculate the length of character names in the `Frostmire Tundra` region without certain letters:a,bA,bB, and without spaces. */
select length(replace(
   replace(
      replace(
         replace(
            replace(
               c.caracter_name,
               ' ',
               ''
            ),
            'a',
            ''
         ),
         'A',
         ''
      ),
      'b',
      ''
   ),
   'B',
   ''
)) as cerinta_b
  from caracter c
 inner join character_party cp
on c.id_character_party = cp.id_party
 inner join guild g
on cp.id_guild_origin = g.id_guild
 inner join region r
on g.id_region = r.id_region
 where r.id_region = 5102;

/* TASK: Modify character names in the `Frostmire Tundra` region,as before but, pad to 60 characters with '%' and '&'. */
select rpad(
   lpad(
      replace(
         replace(
            replace(
               replace(
                  replace(
                     c.caracter_name,
                     ' ',
                     ''
                  ),
                  'a',
                  ''
               ),
               'A',
               ''
            ),
            'b',
            ''
         ),
         'B',
         ''
      ),
      30,
      '%'
   ),
   60,
   '&'
) as cerinta_c
  from caracter c
 inner join character_party cp
on c.id_character_party = cp.id_party
 inner join guild g
on cp.id_guild_origin = g.id_guild
 inner join region r
on g.id_region = r.id_region
 where r.id_region = 5102;

/* TASK: Display the number of players in each team. */
select cp.party_name,
       count(c.id_character_party) as numer_members
  from caracter c
 inner join character_party cp
on cp.id_party = c.id_character_party
 group by cp.party_name;

/* TASK: Update rewards for specific guilds based on account age conditions. */
update main_quest
   set
   main_quest_reward = main_quest_reward * 1.1
 where id_party in (
   select c.id_character_party
     from player_account p
    inner join game_account_caracter gac
   on p.id_player = gac.id_player
    inner join caracter c
   on gac.id_caracter = c.id_caracter
    inner join character_party cp
   on c.id_character_party = cp.id_party
    inner join guild g
   on cp.id_guild_origin = g.id_guild
    where id_game = 100
      and months_between(
      p.account_creation_date,
      g.guild_birthday
   ) >= 250
    group by c.id_character_party
);
commit;

/* TASK: Add 15 months to account creation date and display new dates, next Monday, and last day of the month. */
select player_name,
       add_months(
          account_creation_date,
          15
       ) as new_date,
       next_day(
          add_months(
             account_creation_date,
             15
          ),
          'MONDAY'
       ) as next_monday_bruh,
       last_day(add_months(
          account_creation_date,
          15
       ))
  from player_account p
 where extract(year from add_months(
   account_creation_date,
   15
)) <= 2016
 order by new_date asc;

/* TASK: Display guild names and the number of missions per guild using a natural join. */
select guild_name,
       count(id_main_quest)
  from guild
natural join main_quest
 group by guild_name;

/* TASK: Calculate team rewards and experience statistics (max, min, avg, stddev). */
select max((sum(mq.main_quest_reward)) + sum(sq.side_quest_reward)) as max_coins,
       min((sum(mq.main_quest_reward)) + sum(sq.side_quest_reward)) as min_coins,
       trunc(
          avg((sum(mq.main_quest_reward)) + sum(sq.side_quest_reward)),
          2
       ) as avg_coins,
       trunc(
          stddev((sum(mq.main_quest_reward)) + sum(sq.side_quest_reward)),
          2
       ) as stddev_coins,
       max(sum(mq.main_quest_experience_points) + sum(sq.side_quest_experience_points)) as max_experience,
       min(sum(mq.main_quest_experience_points) + sum(sq.side_quest_experience_points)) as min_experience,
       trunc(
          avg(sum(mq.main_quest_experience_points) + sum(sq.side_quest_experience_points)),
          2
       ) as avg_experience,
       trunc(
          stddev(sum(mq.main_quest_experience_points) + sum(sq.side_quest_experience_points)),
          2
       ) as stdev_experience
  from character_party cp
 inner join main_quest mq
on cp.id_party = mq.id_party
 inner join side_quest sq
on cp.id_party = sq.id_party
 group by cp.party_name;

/* TASK: Display hierarchical structure of guilds. */
select id_guild,
       guild_name,
       superior_guild,
       level
  from guild
start with
   superior_guild is null
connect by
   prior id_guild = superior_guild;