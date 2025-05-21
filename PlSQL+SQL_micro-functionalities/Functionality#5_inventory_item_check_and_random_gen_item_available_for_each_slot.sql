   SET SERVEROUTPUT ON;

-------------------------------------------------------------------------------
-- Functionality 5: Validate Inventory Items Based on Player Class
--
-- This group of procedures and functions handles randomized item allocation 
-- and class-based validation of items for each player.
--
-- Components:
--
-- 1. Procedure: random_generating_items_in_player_inventory
--    - Populates each player's inventory item slots (1 to 3) with random items
--      selected from existing items in the database.
--
-- 2. Function: random_gen_item_id
--    - Returns a random valid item ID (id_item) from the 'item' table.
--
-- 3. Function: get_player_class
--    - Returns the character class ID for a player, given their inventory ID.
--
-- 4. Function: get_charact_id_from_item_class
--    - Returns the required character class ID for a specific item.
--
-- 5. Procedure: check_item_class_restriction
--    - Iterates through all player inventories and ensures that items in slots
--      1 to 3 match the owning character's class.
--    - If an item does not match the character's class, it is unequipped and
--      the inventory slot is set to NULL.
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- 1. Procedure: Populate Inventory with Random Items
--    Sets item_available_1, _2, _3 to random valid items for all players.
-------------------------------------------------------------------------------
create or replace procedure random_generating_items_in_player_inventory as
begin
   -- Temporarily unequip all items to avoid constraint violations
   update inventory
      set
      item_equipped = null;

   -- Populate each inventory with new random items in all slots
   update inventory
      set item_available_1 = random_gen_item_id,
          item_available_2 = random_gen_item_id,
          item_available_3 = random_gen_item_id;
end;
/

EXECUTE random_generating_items_in_player_inventory;

-------------------------------------------------------------------------------
-- 2. Function: Generate a Random Valid Item ID
--    Selects a random id_item from the full range of existing item IDs.
-------------------------------------------------------------------------------
create or replace function random_gen_item_id return number is
   v_max number;
   v_min number;
begin
   select max(id_item),
          min(id_item)
     into
      v_max,
      v_min
     from item;

   return dbms_random.value(
      v_min,
      v_max + 1
   );
end;
/

-------------------------------------------------------------------------------
-- 3. Function: Get Player's Character Class ID
--    Finds the class ID of the character associated with a given inventory ID.
-------------------------------------------------------------------------------
create or replace function get_player_class (
   p_id_inventory caracter.id_inventory%type
) return integer is
   v_id integer;
begin
   select id_character_class
     into v_id
     from caracter
    where id_inventory = p_id_inventory;

   return v_id;
end;
/

-------------------------------------------------------------------------------
-- 4. Function: Get Required Class ID for an Item
--    Returns the character class restriction of a given item.
-------------------------------------------------------------------------------
create or replace function get_charact_id_from_item_class (
   p_id_item item.id_item%type
) return integer is
   v_id integer;
begin
   select character_class_id
     into v_id
     from item
    where id_item = p_id_item;

   return v_id;
end;
/

-------------------------------------------------------------------------------
-- 5. Procedure: Validate Class Compatibility of Inventory Items
--    For each inventory, checks if items in slots 1 to 3 match the character's class.
--    If not, the item is unequipped and the corresponding slot is set to NULL.
-------------------------------------------------------------------------------
create or replace procedure check_item_class_restriction as
   cursor cursor_inventare is
   select id_inventory,
          item_available_1,
          item_available_2,
          item_available_3
     from inventory;
begin
   for inventar in cursor_inventare loop
      -- Slot 1 check
      if get_player_class(inventar.id_inventory) != get_charact_id_from_item_class(inventar.item_available_1) then
         update inventory
            set
            item_available_1 = null
          where id_inventory = inventar.id_inventory;
      end if;

      -- Slot 2 check
      if get_player_class(inventar.id_inventory) != get_charact_id_from_item_class(inventar.item_available_2) then
         update inventory
            set
            item_available_2 = null
          where id_inventory = inventar.id_inventory;
      end if;

      -- Slot 3 check
      if get_player_class(inventar.id_inventory) != get_charact_id_from_item_class(inventar.item_available_3) then
         update inventory
            set
            item_available_3 = null
          where id_inventory = inventar.id_inventory;
      end if;
   end loop;
end;
/

EXECUTE check_item_class_restriction;

/*dropping the procedures and functions from above and including them in a package */
drop procedure random_generating_items_in_player_inventory;
drop function random_gen_item_id;
drop function get_player_class;
drop function get_charact_id_from_item_class;
drop procedure check_item_class_restriction;

create or replace package inventory_package as
   procedure random_generating_items_in_player_inventory;
   function random_gen_item_id return number;
   procedure check_item_class_restriction;
end inventory_package;
/

create or replace package body inventory_package as

   procedure random_generating_items_in_player_inventory as
   begin
      update inventory
         set
         item_equipped = null;

      update inventory
         set item_available_1 = random_gen_item_id,
             item_available_2 = random_gen_item_id,
             item_available_3 = random_gen_item_id;
   end;

   function random_gen_item_id return number is
      v_max number;
      v_min number;
   begin
      select max(id_item),
             min(id_item)
        into
         v_max,
         v_min
        from item;

      return dbms_random.value(
         v_min,
         v_max + 1
      );
   end;

   function get_player_class (
      p_id_inventory caracter.id_inventory%type
   ) return integer is
      v_id integer;
   begin
      select id_character_class
        into v_id
        from caracter
       where id_inventory = p_id_inventory;

      return v_id;
   end;

   function get_charact_id_from_item_class (
      p_id_item item.id_item%type
   ) return integer is
      v_id integer;
   begin
      select character_class_id
        into v_id
        from item
       where id_item = p_id_item;

      return v_id;
   end;

   procedure check_item_class_restriction as
      cursor cursor_inventare is
      select id_inventory,
             item_available_1,
             item_available_2,
             item_available_3
        from inventory;
   begin
      for inventar in cursor_inventare loop
         if get_player_class(inventar.id_inventory) != get_charact_id_from_item_class(inventar.item_available_1) then
            update inventory
               set
               item_available_1 = null
             where id_inventory = inventar.id_inventory;
         end if;

         if get_player_class(inventar.id_inventory) != get_charact_id_from_item_class(inventar.item_available_2) then
            update inventory
               set
               item_available_2 = null
             where id_inventory = inventar.id_inventory;
         end if;

         if get_player_class(inventar.id_inventory) != get_charact_id_from_item_class(inventar.item_available_3) then
            update inventory
               set
               item_available_3 = null
             where id_inventory = inventar.id_inventory;
         end if;
      end loop;
   end;

end inventory_package;
/