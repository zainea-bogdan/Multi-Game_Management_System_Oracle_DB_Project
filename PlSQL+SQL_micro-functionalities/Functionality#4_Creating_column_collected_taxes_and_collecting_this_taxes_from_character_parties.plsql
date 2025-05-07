/*
Functionalitate #4
    - 1 procedura de creeare coloana coins collected from taxes 
    - 1 procedura care calculeaza si care populeaza coloana de coins collected. 

    Explicatie: daca o misiune nu face o misiune de la guild ul nativ(unde a fost infiintat) atunci va trebui sa plateasca din reward ul misiuni x%(guild taxul) catre guildul care a "postat" aceea misiune sa zicem

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

-- execute validare_coloana_guild_taxes_collected_total;


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
-- rollback;
-- execute COLECTARE_TAXE_DACA_E_CAZUL ;