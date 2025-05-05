/*Functionality #3
    - 1 procedura ca imi genereaza random min lvl minim in functie de avg lvl echipelor la momentul rularii
    - 1 procedura care verifica daca echipa a facut un misiune si avea min lvl necesar si daca nu sa marcheze misiunea respectiva cu 0
    - 1 procedura care sa recalculeze coins si exp echipa si automat si lvl acesteia 
*/

create or replace procedure generate_min_lvl_main_quest as
   v_avg_lvl           number;
   v_number_main_quest number;
begin
   select avg(lvl_echipa)
     into v_avg_lvl
     from character_party;

   select count(*)
     into v_number_main_quest
     from main_quest;

   dbms_output.put_line(v_avg_lvl);
   for i in 1..v_number_main_quest loop
    
   end loop;
end;

select *
  from character_party;