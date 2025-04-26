/*Functionality#1*/
   /*Idee de baza: vreau sa contruiesc un pachet de proceduri si functii care fac urmatoarele chestii:
   - 1 procedura care imi creeaza o coloana de dificultate a misiunilor(insa verifica si daca coloana exista in prealabil) si care imi seteaza aleator, dificultatea unui main quest 
   - 1 procedura care imi seteaza aleator, pe baza unei formule, valoarea experientei pe care o castiga echipa in urma misiunii
   - 1 procedura care imi seteaza aleator, pe baza unei formule, valoarea banutilor(coins), castigare de echipa in urma completarii misiunii
   - 1 functie care le apeleaza pe toate si afiseaza cum s-au manifestat:)
   - Dupa testarea lor individuala ca obiecte separate, voi pune sa fie sterse, si apoi creez pachet cu ele*/



   set SERVEROUTPUT on;
   /*procedura care imi creeaza o coloana de dificultate a misiunilor(si verifica prima data daca exista si o creeaza*/
create or replace procedure validare_existenta_coloana_dificultate_si_alocare_valori as
   v_verifica number;
   no_column_dificultate exception;
begin
   select count(*)
     into v_verifica
     from all_tab_columns
    where table_name = upper('main_quest')
      and column_name = upper('dificultate');

    --daca exista coloana facem mai departe update-ul random de dificultate a misiunilor
   if v_verifica != 0 then
      --setare pentru regiune 5101
      execute immediate 'update main_quest
         set
         dificultate = round(dbms_random.value(
            1,
            10
         ))
       where id_region = 5101';
       --setare pentru regiune 5102
      execute immediate 'update main_quest
         set
         dificultate = round(dbms_random.value(
            1,
            10
         ))
       where id_region = 5102';
        --setare pentru regiune 5103
      execute immediate 'update main_quest
         set
         dificultate =round(dbms_random.value(
            1,
            10
         ))
       where id_region = 5103';
   else
      raise no_column_dificultate;
   end if;

exception
   when no_column_dificultate then
      execute immediate 'ALTER TABLE main_quest ADD (dificultate integer DEFAULT 0 not null)';
      dbms_output.put_line('S-a creat coloana de dificultate. Te rog sa mai rulezi o data aceasta procedura pentru alocare de valori in noua coloana creata'
      );
end;

/* - ESTE NECESAR SA FIE RULATA DE CEL PUTIN DE DOUA ORI PRIMA PROCEDURA PENTRU CREEAREA COLOANEI DE DIFICULTATE SI POPULAREA EI 
- mai jos este procedura care imi seteaza aleator, pe baza unei formule, valoarea experientei pe care o castiga echipa in urma misiunii*/
savepoint before_exp_update;

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



/*procedura care imi seteaza aleator, pe baza unei formule, valoarea banutilor(coins), castigare de echipa in urma completarii misiunii*/

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

/*functie care imi apeleaza toate cele 3 proceduri de mai sus*/

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
                           || '|  dificultate: '
                           || v.dificultate
                           || '|  exp: '
                           || v.main_quest_experience_points
                           || '|  coins: '
                           || v.main_quest_reward);
   end loop;
end;

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

/*LE DAU DROP CA SA LE POT ADAUGA MAI JOS IN PACHETE*/
drop procedure validare_existenta_coloana_dificultate_si_alocare_valori;
drop procedure generare_random_experience;
drop procedure generare_random_reward_coins;
drop procedure generare_si_afisare_exp_reward_dificultate;
drop function formula_calc_based_on_dificulatate_si_regiune;

/*CREATING THE PACKAGE WITH ALL THIS PROCEDURES AND Formula FUNCTION: */
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
   /*PRIMA PROCEDURA*/
   procedure validare_existenta_coloana_dificultate_si_alocare_valori as
      v_verifica number;
      no_column_dificultate exception;
   begin
      select count(*)
        into v_verifica
        from all_tab_columns
       where table_name = upper('main_quest')
         and column_name = upper('dificultate');

    --daca exista coloana facem mai departe update-ul random de dificultate a misiunilor
      if v_verifica != 0 then
      --setare pentru regiune 5101
         execute immediate 'update main_quest
         set
         dificultate = round(dbms_random.value(
            1,
            10
         ))
       where id_region = 5101';
       --setare pentru regiune 5102
         execute immediate 'update main_quest
         set
         dificultate = round(dbms_random.value(
            1,
            10
         ))
       where id_region = 5102';
        --setare pentru regiune 5103
         execute immediate 'update main_quest
         set
         dificultate =round(dbms_random.value(
            1,
            10
         ))
       where id_region = 5103';
      else
         raise no_column_dificultate;
      end if;

   exception
      when no_column_dificultate then
         execute immediate 'ALTER TABLE main_quest ADD (dificultate integer DEFAULT 0 not null)';
         dbms_output.put_line('S-a creat coloana de dificultate. Te rog sa mai rulezi o data aceasta procedura pentru alocare de valori in noua coloana creata'
         );
         validare_existenta_coloana_dificultate_si_alocare_valori;
   end;

   /*A DOUA PROCEDURA*/

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


    /*A TREIA PROCEDURA*/

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
    /*A PATRA PROCEDURA: */
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
                              || '|  dificultate: '
                              || v.dificultate
                              || '|  exp: '
                              || v.main_quest_experience_points
                              || '|  coins: '
                              || v.main_quest_reward);
      end loop;
   end;

    /*SI FUNCTIA */
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

execute generating_random_dificulty_experience_rewards_per_main_quest.generare_random_experience;
commit;

select *
  from main_quest;