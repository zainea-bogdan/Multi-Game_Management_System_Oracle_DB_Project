/* Functionality #2: 
Core concept: Building a package of procedures and functions that perform the following:
- A procedure that updates the mission status column to mark quests as completed (1) or incomplete (0),randomly.
- A procedure that verifies and creates (if necessary) three columns in the `character_party` table:
    1. `exp_echipa` (team experience)
    2. `coins_echipa` (team coins)
    3. `lvl_echipa` (team level), which is calculated based on total experience.
- A procedure that calculates experience per team, stores results in a indexed table, and updates the database accordingly.
- A similar procedure that calculates and stores coin rewards per team.
- A function that calculates the team level based on the total experience.
- Finally, all logic is encapsulated into a package for reuse and modularity.
*/


   set SERVEROUTPUT on;

create or replace procedure random_completare_main_quests as
begin
   update main_quest
      set
      main_quest_status = trunc(dbms_random.value(
         0,
         2
      ));
end;

execute random_completare_main_quests;
select *
  from main_quest;



create or replace function calculare_level (
   experience integer
) return integer as
   lvl integer;
begin
   lvl := trunc(experience / 1000);
   return lvl;
end;

execute validare_coloane_exp_coins_echipe;
create or replace procedure validare_coloane_exp_coins_echipe as
   validare_exp_column   integer;
   validare_coins_column integer;
   validare_lvl_column   integer;
   no_exp_column exception;
   no_coins_column exception;
   no_lvl_column exception;
begin
   select count(*)
     into validare_exp_column
     from all_tab_columns
    where table_name = upper('character_party')
      and column_name = upper('exp_echipa');

   if ( validare_exp_column = 0 ) then
      raise no_exp_column;
   else
      select count(*)
        into validare_coins_column
        from all_tab_columns
       where table_name = upper('character_party')
         and column_name = upper('coins_echipa');

      if ( validare_coins_column = 0 ) then
         raise no_coins_column;
      else
         select count(*)
           into validare_lvl_column
           from all_tab_columns
          where table_name = upper('character_party')
            and column_name = upper('lvl_echipa');

         if ( validare_lvl_column = 0 ) then
            raise no_lvl_column;
         end if;
      end if;
   end if;


exception
   when no_exp_column then
      execute immediate 'ALTER TABLE character_party ADD (exp_echipa integer DEFAULT 0 not null)';
      dbms_output.put_line('S-a creat coloana de exp echipa. Reload');
      validare_coloane_exp_coins_echipe;
   when no_coins_column then
      execute immediate 'ALTER TABLE character_party ADD (coins_echipa integer DEFAULT 0 not null)';
      dbms_output.put_line('S-a creat coloana de coins echipa. Reload');
      validare_coloane_exp_coins_echipe;
   when no_lvl_column then
      execute immediate 'ALTER TABLE character_party ADD (lvl_echipa integer DEFAULT 0 not null)';
      dbms_output.put_line('S-a creat coloana de lvl echipa.Reload');
      validare_coloane_exp_coins_echipe;
end;



create or replace procedure calculare_exp_echipa as
   type exp_array is
      table of integer index by pls_integer;
   structura_de_date_exp exp_array;
   indexare              integer := 6001;
   temp                  integer;
begin
   loop
      begin
         select round(sum(mq.main_quest_experience_points)) as expe
           into temp
           from main_quest mq
          inner join character_party cp
         on cp.id_party = mq.id_party
          where main_quest_status = 1
            and cp.id_party = indexare
          group by cp.id_party;

         structura_de_date_exp(indexare) := temp;
      exception
         when no_data_found then
            structura_de_date_exp(indexare) := 0;
      end;
      indexare := indexare + 1;
      exit when indexare > 6009;
   end loop;

   for indexare in structura_de_date_exp.first..structura_de_date_exp.last loop
      if structura_de_date_exp.exists(indexare) then
         update character_party
            set
            exp_echipa = structura_de_date_exp(indexare)
          where indexare = id_party;
      end if;
   end loop;
end;

execute calculare_exp_echipa;

select *
  from character_party;


-- select cp.id_party as party,
--        round(sum(mq.main_quest_experience_points)) as exp
--   from main_quest mq
--  inner join character_party cp
-- on cp.id_party = mq.id_party
--  where main_quest_status = 1
--  group by cp.id_party;



create or replace procedure calculare_coins_echipa as
   type coins_array is
      table of integer index by pls_integer;
   structura_de_date_exp coins_array;
   indexare              integer := 6001;
   temp                  integer;
begin
   loop
      begin
         select round(sum(mq.main_quest_reward)) as expe
           into temp
           from main_quest mq
          inner join character_party cp
         on cp.id_party = mq.id_party
          where main_quest_status = 1
            and cp.id_party = indexare
          group by cp.id_party;

         structura_de_date_exp(indexare) := temp;
      exception
         when no_data_found then
            structura_de_date_exp(indexare) := 0;
      end;
      indexare := indexare + 1;
      exit when indexare > 6009;
   end loop;

   for indexare in structura_de_date_exp.first..structura_de_date_exp.last loop
      if structura_de_date_exp.exists(indexare) then
         update character_party
            set
            coins_echipa = structura_de_date_exp(indexare)
          where indexare = id_party;
      end if;
   end loop;
end;

execute calculare_coins_echipa;
select *
  from character_party;

-- select cp.id_party,
--        round(sum(mq.main_quest_reward)) as expe
--   from main_quest mq
--  inner join character_party cp
-- on cp.id_party = mq.id_party
--  inner join caracter car
-- on car.id_character_party = cp.id_party
--  where main_quest_status = 1
--  group by cp.id_party;




create or replace procedure lvl_procedure as
   cursor c is
   (
      select id_party,
             exp_echipa experience
        from character_party
   );
begin
   for v in c loop
      update character_party
         set
         lvl_echipa = calculare_level(v.experience)
       where id_party = v.id_party;
   end loop;
end;

execute lvl_procedure;



/*versiuena cu package*/
set SERVEROUTPUT on;
drop procedure random_completare_main_quests;
drop function calculare_level;
drop procedure validare_coloane_exp_coins_echipe;
drop procedure calculare_exp_echipa;
drop procedure calculare_coins_echipa;
drop procedure lvl_procedure;

drop package team_progression_package;

create or replace package team_progression_package as
   procedure random_completare_main_quests;
   procedure validare_coloane_exp_coins_echipe;
   procedure calculare_exp_echipa;
   procedure calculare_coins_echipa;
   procedure lvl_procedure;
   function calculare_level (
      experience integer
   ) return integer;
end team_progression_package;
/

create or replace package body team_progression_package is

   /* Procedure: Randomly sets quest status to completed (1) or not completed (0) */
   procedure random_completare_main_quests as
   begin
      update main_quest
         set
         main_quest_status = trunc(dbms_random.value(
            0,
            2
         ));
   end;

   /* Function: Calculates level based on total experience (1 level per 1000 exp) */
   function calculare_level (
      experience integer
   ) return integer as
      lvl integer;
   begin
      lvl := trunc(experience / 1000);
      return lvl;
   end;

   /* Procedure: Ensures exp, coins, and level columns exist in the "character_party" table.
      If not, they are created and the procedure re-invokes itself.
   */
   procedure validare_coloane_exp_coins_echipe as
      validare_exp_column   integer;
      validare_coins_column integer;
      validare_lvl_column   integer;
      no_exp_column exception;
      no_coins_column exception;
      no_lvl_column exception;
   begin
      select count(*)
        into validare_exp_column
        from all_tab_columns
       where table_name = upper('character_party')
         and column_name = upper('exp_echipa');

      if ( validare_exp_column = 0 ) then
         raise no_exp_column;
      else
         select count(*)
           into validare_coins_column
           from all_tab_columns
          where table_name = upper('character_party')
            and column_name = upper('coins_echipa');

         if ( validare_coins_column = 0 ) then
            raise no_coins_column;
         else
            select count(*)
              into validare_lvl_column
              from all_tab_columns
             where table_name = upper('character_party')
               and column_name = upper('lvl_echipa');

            if ( validare_lvl_column = 0 ) then
               raise no_lvl_column;
            end if;
         end if;
      end if;

   exception
      when no_exp_column then
         execute immediate 'ALTER TABLE character_party ADD (exp_echipa integer DEFAULT 0 not null)';
         dbms_output.put_line('Created column: exp_echipa');
         validare_coloane_exp_coins_echipe;
      when no_coins_column then
         execute immediate 'ALTER TABLE character_party ADD (coins_echipa integer DEFAULT 0 not null)';
         dbms_output.put_line('Created column: coins_echipa');
         validare_coloane_exp_coins_echipe;
      when no_lvl_column then
         execute immediate 'ALTER TABLE character_party ADD (lvl_echipa integer DEFAULT 0 not null)';
         dbms_output.put_line('Created column: lvl_echipa');
         validare_coloane_exp_coins_echipe;
   end;

   /* Procedure: Calculates total team experience based on completed quests.
      Stores values in an associative array and updates the character_party table.
   */
   procedure calculare_exp_echipa as
      type exp_array is
         table of integer index by pls_integer;
      structura_de_date_exp exp_array;
      indexare              integer := 6001;
      temp                  integer;
   begin
      loop
         begin
            select round(sum(mq.main_quest_experience_points))
              into temp
              from main_quest mq
             inner join character_party cp
            on cp.id_party = mq.id_party
             where main_quest_status = 1
               and cp.id_party = indexare
             group by cp.id_party;

            structura_de_date_exp(indexare) := temp;
         exception
            when no_data_found then
               structura_de_date_exp(indexare) := 0;
         end;

         indexare := indexare + 1;
         exit when indexare > 6009;
      end loop;

      for indexare in structura_de_date_exp.first..structura_de_date_exp.last loop
         if structura_de_date_exp.exists(indexare) then
            update character_party
               set
               exp_echipa = structura_de_date_exp(indexare)
             where id_party = indexare;
         end if;
      end loop;
   end;

   /* Procedure: Calculates total team coins based on completed quests.
      Uses an associative array to store temporary values and update the database.
   */
   procedure calculare_coins_echipa as
      type coins_array is
         table of integer index by pls_integer;
      structura_de_date_exp coins_array;
      indexare              integer := 6001;
      temp                  integer;
   begin
      loop
         begin
            select round(sum(mq.main_quest_reward))
              into temp
              from main_quest mq
             inner join character_party cp
            on cp.id_party = mq.id_party
             where main_quest_status = 1
               and cp.id_party = indexare
             group by cp.id_party;

            structura_de_date_exp(indexare) := temp;
         exception
            when no_data_found then
               structura_de_date_exp(indexare) := 0;
         end;

         indexare := indexare + 1;
         exit when indexare > 6009;
      end loop;

      for indexare in structura_de_date_exp.first..structura_de_date_exp.last loop
         if structura_de_date_exp.exists(indexare) then
            update character_party
               set
               coins_echipa = structura_de_date_exp(indexare)
             where id_party = indexare;
         end if;
      end loop;
   end;

   /* Procedure: Calculates level for each party based on the total experience.
      Iterates over all parties and uses the level calculation function.
   */
   procedure lvl_procedure as
      cursor c is
      (
         select id_party,
                exp_echipa as experience
           from character_party
      );
   begin
      for v in c loop
         update character_party
            set
            lvl_echipa = calculare_level(v.experience)
          where id_party = v.id_party;
      end loop;
   end;

end team_progression_package;

execute team_progression_package.random_completare_main_quests;
commit;
select main_quest_status
  from main_quest;
execute team_progression_package.validare_coloane_exp_coins_echipe;
execute team_progression_package.calculare_exp_echipa;
execute team_progression_package.calculare_coins_echipa;
execute team_progression_package.lvl_procedure;


select *
  from character_party;