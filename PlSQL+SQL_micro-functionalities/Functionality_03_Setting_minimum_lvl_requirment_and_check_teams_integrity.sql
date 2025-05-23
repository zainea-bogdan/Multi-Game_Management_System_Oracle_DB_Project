/* Functionality #3 */
/*  Core concept: Ensure that main quests enforce a minimum level requirement for teams, by building a package of procedures that perform the following:
 - A procedure that calculates and assigns a minimum level to each quest, based on the current average team level.
 - A procedure checks if any team completed a quest without meeting the required level. If so:
      - The quest completion is revoked.
      - Half of the quest's coin reward is deducted from the team's total coins.
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
            and ( mis.main_quest_status = 1 )
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

/* versiunea cu package*/
drop procedure generate_min_lvl_main_quest;
drop procedure debifare_misiune_daca_nu_echipa_lvl_min;

drop package quest_min_level_validation_pkg;

create or replace package quest_min_level_validation_pkg as
   procedure generate_min_lvl_main_quest;
   procedure debifare_misiune_daca_nu_echipa_lvl_min;
end quest_min_level_validation_pkg;


create or replace package body quest_min_level_validation_pkg is

   /* Procedure: Assigns a random minimum level requirement to each main quest.
      - Quests with even IDs get a minimum level below average.
      - Quests with odd IDs get a minimum level above average.
   */
   procedure generate_min_lvl_main_quest as
      v_avg_lvl number;
   begin
      select avg(lvl_echipa)
        into v_avg_lvl
        from character_party;

      update main_quest
         set
         minimum_level_team = v_avg_lvl - dbms_random.value(
            1,
            v_avg_lvl / 2
         )
       where mod(
         id_main_quest,
         2
      ) = 0;

      update main_quest
         set
         minimum_level_team = v_avg_lvl + dbms_random.value(
            1,
            v_avg_lvl / 2
         )
       where mod(
         id_main_quest,
         2
      ) != 0;
   end;

   /* Procedure: Revokes quest completion if the team's level was below the required minimum.
      - Sets quest status to 0.
      - Deducts half of the quest reward from the team's total coins.
   */
   procedure debifare_misiune_daca_nu_echipa_lvl_min as
      cursor echipe is
      select id_party,
             lvl_echipa
        from character_party;

      cursor misiuni_principale is
      select id_main_quest,
             id_party,
             minimum_level_team,
             main_quest_status
        from main_quest;
   begin
      for ech in echipe loop
         for mis in misiuni_principale loop
            if
               ( ech.id_party = mis.id_party )
               and ( ech.lvl_echipa < mis.minimum_level_team )
               and ( mis.main_quest_status = 1 )
            then
               update main_quest
                  set
                  main_quest_status = 0
                where id_main_quest = mis.id_main_quest;

               update character_party
                  set
                  coins_echipa = coins_echipa - (
                     select main_quest_reward / 2
                       from main_quest
                      where id_main_quest = mis.id_main_quest
                  )
                where id_party = ech.id_party;
            end if;
         end loop;
      end loop;
   end;

end quest_min_level_validation_pkg;


execute quest_min_level_validation_pkg.generate_min_lvl_main_quest;
execute quest_min_level_validation_pkg.debifare_misiune_daca_nu_echipa_lvl_min;
commit;

select *
  from main_quest
 order by minimum_level_team;
select *
  from character_party;