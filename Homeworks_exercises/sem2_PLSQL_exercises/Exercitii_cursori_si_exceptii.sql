   set serveroutput on;

/*=============CURSORI IMPLICITI DIN CADRUL PLSQL==========================================*/

/*EXERCITIUL 1*/
/*CU OCAZIA ZILEI DE NASTERE:) A GUILDULUI 5302 (de gasit prin query), s-a decis ca toate main questurile asociate acestui guild sa aiba double points de acum. Sa se realizeze un update folosind plsql si cursor implicit */

/*m-am luat dupa data ca sa nu fie usor:)*/
select id_guild
  from guild
 where guild_birthday = to_date('01/02/89','DD/MM/RR');

/*procedura plsql*/
declare
   v_rows_updated_counter number;
begin
   update main_quest
      set
      main_quest_experience_points = 2 * main_quest_experience_points
    where id_guild = (
      select id_guild
        from guild
       where guild_birthday = to_date('01/02/89','DD/MM/RR')
   );

   if sql%found then
      v_rows_updated_counter := sql%rowcount;
      dbms_output.put_line('Total Rows Updated: ' || v_rows_updated_counter);
   else
      dbms_output.put_line('No records were updated.');
   end if;
end;


/*Exercitiul 2*/

/*S-a detectat ca misiunea The Molten Trail a fost completata, sa se actualizeze status, sa se mute aceea misiune intr=o tabela noua ex-mission si sa stearga ulterior inregistrarea din tabela main quest buna */

select *
  from main_quest
 where main_quest_name = 'The Molten Trail';

update main_quest
   set
   main_quest_status = 1
 where main_quest_name = 'The Molten Trail';

create table ex_missions
   as
      select *
        from main_quest
       where 1 = 2;

select *
  from ex_missions;

/*rezolvare efectiv*/
declare
   chosen_mission ex_missions%rowtype;
begin
   select *
     into chosen_mission
     from main_quest
    where main_quest_name = 'The Molten Trail';

   update main_quest
      set
      main_quest_status = 1
    where main_quest_name = 'The Molten Trail';

   if ( sql%rowcount = 1 ) then
      dbms_output.put_line('S-a facut update cu succes!');
   else
      dbms_output.put_line('ai updatat mai multe linii');
   end if;


   insert into ex_missions values chosen_mission;

   delete from main_quest
    where main_quest_name = 'The Molten Trail'
      and main_quest_status = 1;

exception
   when no_data_found then
      dbms_output.put_line('deja ai sters');
end;


/*==================CURSORI EXPLICTI+EXCEPTII============================================*/
   
   
   /*exercitiu 1 */
   /*cerinta:*/
   /*Sa se realizeze un cursor explicit care sa afiseze fiecare echipa si numarul de membri,
    iar daca numarul de membri este <3, 
    sa se ridice o exceptie ca o echipa ar avea nevoie de mini 3 membri 
    si sa se afiseze printr-un vector care sunt numele echipelor necorespunzatoare*/

   set serveroutput on;
declare
   nr_min_membri exception;
   type nume_echipe_gresite is
      table of character_party.party_name%type index by pls_integer;
   echipe nume_echipe_gresite;
begin
   for v in (
      select cp.party_name nume,
             count(c.id_character_party) as number_members
        from caracter c
       inner join character_party cp
      on cp.id_party = c.id_character_party
       group by cp.party_name
       order by count(c.id_character_party) desc
   ) loop
      if ( v.number_members > 3 ) then
         dbms_output.put_line('echipa cu numele '
                              || v.nume
                              || ' are '
                              || v.number_members
                              || ' membri ');
      else
         select party_name nume
         bulk collect
           into echipe
           from character_party cp
          where party_name not in (
            select cp.party_name nume
              from caracter c
             inner join character_party cp
            on cp.id_party = c.id_character_party
             group by cp.party_name
            having count(c.id_character_party) > 3
         );
         raise nr_min_membri;
      end if;
   end loop;
exception
   when nr_min_membri then
      dbms_output.put_line('o echipa trebuie sa aiba minim 3 membri');
      dbms_output.put_line('Lista echipe necorespunzatoare:');
      for i in echipe.first..echipe.last loop
         dbms_output.put_line(echipe(i));
      end loop;
end;

/*exercitiul 2*/
/* TASK: Update rewards for specific guilds based on account age conditions. */

   set SERVEROUTPUT on;

declare begin
   for v in (
      select c.id_character_party nume_party
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
   ) loop
      update main_quest
         set
         main_quest_reward = main_quest_reward * 1.1
       where id_party = v.nume_party;


   end loop;

   dbms_output.put_line('numarul de questuri updatate: ' || sql%rowcount);
end;



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



 /**/