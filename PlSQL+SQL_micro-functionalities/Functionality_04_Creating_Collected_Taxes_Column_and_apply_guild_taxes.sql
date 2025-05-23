/* Functionality #4 */
/* Core concept: Apply and collect guild taxes for completed quests.
   - A procedure to ensure the `taxes_collected_total` column exists in the `guild` table.
   - A procedure that calculates and applies guild taxes for completed quests
     where the quest's guild is different from the team's origin guild.
*/


/*procedura care creeaza coloana de taxes collected unde se vor adauga banuti*/
select *
  from guild;
create or replace procedure validare_coloana_guild_taxes_collected_total as
   v_verifica number;
   no_column_dificultate exception;
begin
   select count(*)
     into v_verifica
     from all_tab_columns
    where table_name = upper('guild')
      and column_name = upper('taxes_collected_total');

    --daca exista coloana facem mai departe update-ul random de dificultate a misiunilor
   if v_verifica = 0 then
      raise no_column_dificultate;
   end if;
exception
   when no_column_dificultate then
      execute immediate 'ALTER TABLE guild ADD (taxes_collected_total number DEFAULT 0 not null)';
      dbms_output.put_line('S-a creat coloana de taxes_collected. NOICE! :) ');
end;

execute validare_coloana_guild_taxes_collected_total;


/*procedura care imi verifica guyild misiunilor compeltate de toate echipe si aplicarea guild taxes daca este cazulCALCUL_VECHIME*/

create or replace procedure colectare_taxe_daca_e_cazul as
   cursor echipe is
   (
      select id_party,
             coins_echipa,
             id_guild_origin
        from character_party
   );
   cursor misiuni is
   (
      select id_main_quest,
             id_guild,
             id_party,
             main_quest_reward,
             main_quest_status
        from main_quest
   );
   v_guild_tax number;
begin
   for ech in echipe loop
      for mis in misiuni loop
         if (
            ( mis.main_quest_status = 1 )
            and ( ech.id_guild_origin != mis.id_guild )
         ) then
            select guild_tax
              into v_guild_tax
              from guild
             where id_guild = mis.id_guild;


            update guild
               set
               taxes_collected_total = taxes_collected_total + mis.main_quest_reward * ( v_guild_tax / 100 )
             where id_guild = mis.id_guild;
            update character_party
               set
               coins_echipa = coins_echipa - mis.main_quest_reward * ( v_guild_tax / 100 )
             where id_party = mis.id_party;
         end if;
      end loop;
   end loop;
exception
   when no_data_found then
      v_guild_tax := 0;
end;

execute COLECTARE_TAXE_DACA_E_CAZUL;

select taxes_collected_total
  from guild;

select coins_echipa
  from character_party;
/*versiunea cu package*/

   set SERVEROUTPUT on;


drop procedure validare_coloana_guild_taxes_collected_total;
drop procedure colectare_taxe_daca_e_cazul;

drop package guild_tax_package;


create or replace package guild_tax_package as
   procedure validare_coloana_guild_taxes_collected_total;
   procedure colectare_taxe_daca_e_cazul;
end guild_tax_package;
/

create or replace package body guild_tax_package is

   /* Procedure: Validates if the "taxes_collected_total" column exists in the "guild" table.
      - If it does not exist, creates the column with default value 0 (not null).
   */
   procedure validare_coloana_guild_taxes_collected_total as
      v_verifica number;
      no_column exception;
   begin
      select count(*)
        into v_verifica
        from all_tab_columns
       where table_name = upper('guild')
         and column_name = upper('taxes_collected_total');

      if v_verifica = 0 then
         raise no_column;
      end if;
   exception
      when no_column then
         execute immediate 'ALTER TABLE guild ADD (taxes_collected_total number DEFAULT 0 not null)';
         dbms_output.put_line('Column "taxes_collected_total" created in GUILD table.');
   end;

   /* Procedure: Applies guild tax logic for all completed main quests.
      - If the quest was posted by a different guild than the team's origin guild:
         * Deduct a percentage of the reward (the guild tax) from the team’s coins.
         * Add the same amount to the quest-posting guild’s total collected taxes.
   */
   procedure colectare_taxe_daca_e_cazul as
      cursor echipe is
      select id_party,
             coins_echipa,
             id_guild_origin
        from character_party;

      cursor misiuni is
      select id_main_quest,
             id_guild,
             id_party,
             main_quest_reward,
             main_quest_status
        from main_quest;

      v_guild_tax number;
   begin
      for ech in echipe loop
         for mis in misiuni loop
            if
               ( mis.main_quest_status = 1 )
               and ( ech.id_guild_origin != mis.id_guild )
            then
               begin
                  select guild_tax
                    into v_guild_tax
                    from guild
                   where id_guild = mis.id_guild;

                  update guild
                     set
                     taxes_collected_total = taxes_collected_total + ( mis.main_quest_reward * ( v_guild_tax / 100 ) )
                   where id_guild = mis.id_guild;

                  update character_party
                     set
                     coins_echipa = coins_echipa - ( mis.main_quest_reward * ( v_guild_tax / 100 ) )
                   where id_party = mis.id_party;

               exception
                  when no_data_found then
                     v_guild_tax := 0;
               end;
            end if;
         end loop;
      end loop;
   end;

end guild_tax_package;

execute guild_tax_collection_pkg.validare_coloana_guild_taxes_collected_total;
execute guild_tax_collection_pkg.colectare_taxe_daca_e_cazul;
commit;


select *
  from guild;
select *
  from character_party;