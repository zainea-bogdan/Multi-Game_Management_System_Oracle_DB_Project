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

   insert into ex_missions values chosen_mission;

   delete from main_quest
    where main_quest_name = 'The Molten Trail'
      and main_quest_status = 1;

end;

select *
  from ex_missions;

select *
  from main_quest;

commit;