/* Functionality#1 */
/* Core concept: Building a package of procedures and functions that perform the following:
   - A procedure that creates a "difficulty" column for main quests (if not already present) and assigns random difficulty values.
   - A procedure that  assigns experience points to the team based on a formula that factors in quest difficulty and region.
   - A procedure that  assigns coin rewards to the team using a similar formula.
   - A procedure that calls the above three procedures and displays the results.
   - A function  that calculates the value for experience/coins based on the difficulty and region formula from above.
   - After verifying functionality separately, drop and re-create them in a package for reuse and organization.
*/

   set SERVEROUTPUT on;

/* Procedure: Checks if "difficulty" column exists in the "main_quest" table.
   - If it exists: assigns random difficulty values for quests based on region.
   - If it doesn't exist: creates the column and outputs a message asking for re-execution.
*/
create or replace procedure validare_existenta_coloana_dificultate_si_alocare_valori as
   v_verifica number;
   no_column_dificultate exception;
begin
   select count(*)
     into v_verifica
     from all_tab_columns
    where table_name = upper('main_quest')
      and column_name = upper('dificultate');

   if v_verifica != 0 then
      -- Assign random difficulty for region 5101
      execute immediate 'update main_quest
         set dificultate = round(dbms_random.value(1, 10))
         where id_region = 5101';

      -- Assign random difficulty for region 5102
      execute immediate 'update main_quest
         set dificultate = round(dbms_random.value(1, 10))
         where id_region = 5102';

      -- Assign random difficulty for region 5103
      execute immediate 'update main_quest
         set dificultate = round(dbms_random.value(1, 10))
         where id_region = 5103';
   else
      raise no_column_dificultate;
   end if;

exception
   when no_column_dificultate then
      execute immediate 'ALTER TABLE main_quest ADD (dificultate integer DEFAULT 0 not null)';
      dbms_output.put_line('Difficulty column created. Please rerun the procedure to assign values.');
end;

/* NOTE: The above procedure must be executed at least twice to ensure
   1. The "difficulty" column is created.
   2. The column is then populated with values. */
savepoint before_exp_update;

/* Procedure: Calculates and updates the experience points earned by the team.
   - Formula is based on difficulty and region-specific bonuses.
*/
create or replace procedure generare_random_experience as
begin
   update main_quest
      set
      main_quest_experience_points = round(dificultate * 1000 * 0.7 +(
         case
            when id_region = 5101 then
               1000
            when id_region = 5102 then
               700
            when id_region = 5103 then
               700
            else 500
         end
      ) * 0.3);
end;

/* Procedure: Calculates and updates the coin reward earned by the team.
   - Formula is similar to the experience calculation and also based on difficulty and region.
*/
create or replace procedure generare_random_reward_coins as
begin
   update main_quest
      set
      main_quest_reward = round(dificultate * 1000 * 0.7 +(
         case
            when id_region = 5101 then
               1000
            when id_region = 5102 then
               700
            when id_region = 5103 then
               700
            else 500
         end
      ) * 0.3);
end;

/* Procedure: Executes all three core procedures (difficulty, experience, reward),
   then outputs the main quest details with their assigned values.
*/
create or replace procedure generare_si_afisare_exp_reward_dificultate as
   cursor c is
   (
      select id_main_quest,
             dificultate,
             main_quest_experience_points,
             main_quest_reward
        from main_quest
   );
begin
   validare_existenta_coloana_dificultate_si_alocare_valori;
   generare_random_experience;
   generare_random_reward_coins;
   for v in c loop
      dbms_output.put_line('id_misiune: '
                           || v.id_main_quest
                           || ' |  difficulty: '
                           || v.dificultate
                           || ' |  exp: '
                           || v.main_quest_experience_points
                           || ' |  coins: '
                           || v.main_quest_reward);
   end loop;
end;

/* Function: Calculates the final value based on difficulty and region.
   - Used in experience and reward procedures.
   - Encapsulates business logic for better reusability.
*/
create or replace function formula_calc_based_on_dificulatate_si_regiune (
   dificultate integer,
   id_region   integer
) return integer as
   valoare integer;
begin
   valoare := round(dificultate * 1000 * 0.7 +(
      case
         when id_region = 5101 then
            1000
         when id_region = 5102 then
            700
         when id_region = 5103 then
            700
         else 500
      end
   ) * 0.3);
   return valoare;
end;

/* Dropping standalone procedures and function to repackage them below */
drop procedure validare_existenta_coloana_dificultate_si_alocare_valori;
drop procedure generare_random_experience;
drop procedure generare_random_reward_coins;
drop procedure generare_si_afisare_exp_reward_dificultate;
drop function formula_calc_based_on_dificulatate_si_regiune;

/* Creating the package containing all previously defined logic */
create or replace package generating_random_dificulty_experience_rewards_per_main_quest as
   procedure validare_existenta_coloana_dificultate_si_alocare_valori;
   procedure generare_random_experience;
   procedure generare_random_reward_coins;
   procedure generare_si_afisare_exp_reward_dificultate;
   function formula_calc_based_on_dificulatate_si_regiune (
      dificultate integer,
      id_region   integer
   ) return integer;
end;

create or replace package body generating_random_dificulty_experience_rewards_per_main_quest is

   /* Procedure: Same as above, now in package */
   procedure validare_existenta_coloana_dificultate_si_alocare_valori as
      v_verifica number;
      no_column_dificultate exception;
   begin
      select count(*)
        into v_verifica
        from all_tab_columns
       where table_name = upper('main_quest')
         and column_name = upper('dificultate');

      if v_verifica != 0 then
         execute immediate 'update main_quest
         set dificultate = round(dbms_random.value(1, 10))
         where id_region = 5101';
         execute immediate 'update main_quest
         set dificultate = round(dbms_random.value(1, 10))
         where id_region = 5102';
         execute immediate 'update main_quest
         set dificultate = round(dbms_random.value(1, 10))
         where id_region = 5103';
      else
         raise no_column_dificultate;
      end if;

   exception
      when no_column_dificultate then
         execute immediate 'ALTER TABLE main_quest ADD (dificultate integer DEFAULT 0 not null)';
         dbms_output.put_line('Difficulty column created. Please rerun the procedure to assign values.');
         validare_existenta_coloana_dificultate_si_alocare_valori;
   end;

   /* Procedure: Experience assignment */
   procedure generare_random_experience as
   begin
      update main_quest
         set
         main_quest_experience_points = round(dificultate * 600 * 0.7 +(
            case
               when id_region = 5101 then
                  1000
               when id_region = 5102 then
                  700
               when id_region = 5103 then
                  700
               else 500
            end
         ) * 0.3);
   end;

   /* Procedure: Coin reward assignment */
   procedure generare_random_reward_coins as
   begin
      update main_quest
         set
         main_quest_reward = round(dificultate * 1000 * 0.7 +(
            case
               when id_region = 5101 then
                  1000
               when id_region = 5102 then
                  700
               when id_region = 5103 then
                  700
               else 500
            end
         ) * 0.3);
   end;

   /* Procedure: Executes full update and displays results */
   procedure generare_si_afisare_exp_reward_dificultate as
      cursor c is
      (
         select id_main_quest,
                dificultate,
                main_quest_experience_points,
                main_quest_reward
           from main_quest
      );
   begin
      validare_existenta_coloana_dificultate_si_alocare_valori;
      generare_random_experience;
      generare_random_reward_coins;
      for v in c loop
         dbms_output.put_line('id_misiune: '
                              || v.id_main_quest
                              || ' |  difficulty: '
                              || v.dificultate
                              || ' |  exp: '
                              || v.main_quest_experience_points
                              || ' |  coins: '
                              || v.main_quest_reward);
      end loop;
   end;

   /* Function: Returns calculated value based on difficulty and region */
   function formula_calc_based_on_dificulatate_si_regiune (
      dificultate integer,
      id_region   integer
   ) return integer as
      valoare integer;
   begin
      valoare := round(dificultate * 1000 * 0.7 +(
         case
            when id_region = 5101 then
               1000
            when id_region = 5102 then
               700
            when id_region = 5103 then
               700
            else 500
         end
      ) * 0.3);
      return valoare;
   end;

end;

-- Execute one of the procedures from the package to test
execute generating_random_dificulty_experience_rewards_per_main_quest.generare_random_experience;
commit;

-- View the results
select *
  from main_quest;