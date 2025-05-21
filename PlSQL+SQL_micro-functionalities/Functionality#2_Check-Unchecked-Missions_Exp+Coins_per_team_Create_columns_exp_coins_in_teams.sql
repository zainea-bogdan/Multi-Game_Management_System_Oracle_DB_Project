/*Functionality #2*/
/*Idee de baza: vreau sa contruiesc un pachet de proceduri si functii care fac urmatoarele chestii:
- 1 procedura care imi da update pe coloaan cu status misiune care imi zice daca misiunea este teminata(1) sau neincheiata(0)
- 1 procedura ce verifica si creeaza coloana de reward, exp per echipa si plus o coloana de level unde se calculeaza pe baza unei formule lvl echipei in functie de exp 
- 1 procedura care imi calculeaza exp si coins per echipa si imi stocheaza fiecare valoare intr-o structura de date si apoi din structura de date eu iau si pun in tabela :)
- */


   set SERVEROUTPUT on;
   /*procedura care imi da update pe coloaan cu status misiune */
create or replace procedure random_completare_main_quests as
begin
   update main_quest
      set
      main_quest_status = round(dbms_random.value(
         0,
         1
      ));
end;

/*functie de calculare level echipa in functie de exp castigat*/
create or replace function calculare_level (
   experience integer
) return integer as
   lvl integer;
begin
   lvl := trunc(experience / 1000);
   return lvl;
end;

/*procedura care imi creeaza coloanele de exp si coins in tabela de charcater party si verifica daca ele exisdta deja*/
create or replace procedure validare_coloane_exp_coins_echipe as
   validare_exp_column   integer;
   validare_coins_column integer;
   validare_lvl_column   integer;
   no_exp_column exception;
   no_coins_column exception;
   no_lvl_column exception;
begin
/*verific daca exista coloanad e exp echipa in cadrul tabelei de character party:)*/
   select count(*)
     into validare_exp_column
     from all_tab_columns
    where table_name = upper('character_party')
      and column_name = upper('exp_echipa');

   if ( validare_exp_column = 0 ) then
      raise no_exp_column;
   else
    /*verific pentru coloaan de coins*/

      select count(*)
        into validare_coins_column
        from all_tab_columns
       where table_name = upper('character_party')
         and column_name = upper('coins_echipa');

      if ( validare_coins_column = 0 ) then
         raise no_coins_column;
      else
      /*verific pentru coloana de lvl echipa */
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


/*procedura care calculeaza coins, le baga intr o sturctura de date si apoi le baga in tabel una cate una */
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


/*procedura care calculeaza lvl echipei */

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

create or replace package body team_progression_package is

   /* Procedure: Randomly sets quest status to completed (1) or not completed (0) */
   procedure random_completare_main_quests as
   begin
      update main_quest
         set
         main_quest_status = round(dbms_random.value(
            0,
            1
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
execute team_progression_package.validare_coloane_exp_coins_echipe;
execute team_progression_package.calculare_exp_echipa;
execute team_progression_package.calculare_coins_echipa;
execute team_progression_package.lvl_procedure;

commit;
select *
  from character_party;