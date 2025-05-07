/*Functionality #3
    - 1 procedura ca imi genereaza random min lvl minim in functie de avg lvl echipelor la momentul rularii
    - 1 procedura care verifica daca echipa a facut un misiune si avea min lvl necesar si daca nu sa marcheze misiunea respectiva cu 0 si scade din coins la echipa jumatate din valoarea acelei misiuni, ca un fel de indatorare
    - 
*/

create or replace procedure generate_min_lvl_main_quest as
   v_avg_lvl           number;
   v_number_main_quest number;
begin
   select avg(lvl_echipa)
     into v_avg_lvl
     from character_party;

   update main_quest
      set
      minimum_level_team = v_avg_lvl - dbms_random.value(
         1,
         (v_avg_lvl / 2)
      )
    where mod(
      id_main_quest,
      2
   ) = 0;
   update main_quest
      set
      minimum_level_team = v_avg_lvl + dbms_random.value(
         1,
         (v_avg_lvl / 2)
      )
    where mod(
      id_main_quest,
      2
   ) != 0;
end;
/*teting the above procedure*/
-- execute GENERATE_MIN_LVL_MAIN_QUEST;

select *
  from main_quest
 order by minimum_level_team;

select *
  from character_party;






/*procedura care scade din coins la echipa valoarea misiuni completate neregulamentar*/
create or replace procedure debifare_misiune_daca_nu_echipa_lvl_min as
   cursor echipe is
   (
      select id_party,
             lvl_echipa
        from character_party
   );
   cursor misiuni_principale is
   (
      select id_main_quest,
             id_party,
             minimum_level_team,
             main_quest_status
        from main_quest
   );
begin
   for ech in echipe loop
      for mis in misiuni_principale loop
         if (
            ( ech.id_party = mis.id_party )
            and ( ech.lvl_echipa < mis.minimum_level_team )
         ) then
            update main_quest
               set
               main_quest_status = 0
             where id_main_quest = mis.id_main_quest;
            update character_party
               set
               coins_echipa = coins_echipa - ( (
                  select main_quest_reward
                    from main_quest
                   where id_main_quest = mis.id_main_quest
               ) / 2 )
             where id_party = ech.id_party;
         end if;
      end loop;
   end loop;
end;

rollback;
execute DEBIFARE_MISIUNE_DACA_NU_ECHIPA_LVL_MIN;
commit;