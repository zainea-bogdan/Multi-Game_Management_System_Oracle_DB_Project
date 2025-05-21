/* 
   For Functionality 5:
   Ensures that each item assigned to an inventory slot (1–3) matches the class
   of the character who owns the inventory. If there is a mismatch, the item is
   automatically removed (set to NULL) before the insert or update is committed.
*/
create or replace trigger trigger_validare_clasa_inventory before
   insert or update on inventory
   for each row
declare
   v_caracter_class integer;
   v_item_class     integer;
begin
   v_caracter_class := inventory_package.get_player_class(:new.id_inventory);
   if :new.item_available_1 is not null then
      v_item_class := inventory_package.get_charact_id_from_item_class(:new.item_available_1);
      if v_item_class != v_caracter_class then
         :new.item_available_1 := null;
      end if;
   end if;

   if :new.item_available_2 is not null then
      v_item_class := inventory_package.get_charact_id_from_item_class(:new.item_available_2);
      if v_item_class != v_caracter_class then
         :new.item_available_2 := null;
      end if;
   end if;

   if :new.item_available_3 is not null then
      v_item_class := inventory_package.get_charact_id_from_item_class(:new.item_available_3);
      if v_item_class != v_caracter_class then
         :new.item_available_3 := null;
      end if;
   end if;
end;


/* 
   For Functionality 2:
   Automatically recalculates the level of each team (party) whenever any 
   update is made to the main_quest table. It calls the level calculation 
   procedure from the team progression package after the update.
*/

create or replace trigger trigger_recalculare_lvl_echipe after
   update of main_quest_status on main_quest
begin
   team_progression_package.calculare_exp_echipa;
   team_progression_package.calculare_coins_echipa;
   team_progression_package.lvl_procedure;
end;
/


/* 
   For Functionality 3:
   After updating the `main_quest_status`, this trigger ensures that the quest 
   remains valid for the team by checking if the team meets the minimum level 
   requirement. If not, the quest is automatically invalidated.
*/

create or replace trigger trigger_validare_min_lvl_main_quest after
   update of main_quest_status on main_quest
begin
   quest_min_level_validation_pkg.debifare_misiune_daca_nu_echipa_lvl_min;
end;
/