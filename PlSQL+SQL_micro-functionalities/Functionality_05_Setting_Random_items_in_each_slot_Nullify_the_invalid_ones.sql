/* Functionality #5 */
/* Core concept: Randomize item allocation in player inventories and ensure items match the character's class. Implemented via a utility package with:
 - A procedure that populates item slots 1–3 with random items.(the columns `item_available_1 to 3`)
 - Functions to retrieve player and item class IDs.
 - A procedure to validate item-class compatibility and nullify mismatched items.
 - Note first of all drop this constrain:
   - `alter table inventory drop constraint chk_equipped_item;`
*/


   SET SERVEROUTPUT ON;


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
      v_max
   );
end;
/
create or replace procedure random_generating_items_in_player_inventory as
begin
   update inventory
      set
      item_equipped = null;


   update inventory
      set item_available_1 = random_gen_item_id,
          item_available_2 = random_gen_item_id,
          item_available_3 = random_gen_item_id;
end;
/

EXECUTE random_generating_items_in_player_inventory;




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


create or replace procedure check_item_class_restriction as
   cursor cursor_inventare is
   select id_inventory,
          item_available_1,
          item_available_2,
          item_available_3
     from inventory;
begin
   for inventar in cursor_inventare loop
      -- slot 1 
      if get_player_class(inventar.id_inventory) != get_charact_id_from_item_class(inventar.item_available_1) then
         update inventory
            set
            item_available_1 = null
          where id_inventory = inventar.id_inventory;
      end if;

      -- slot 2 
      if get_player_class(inventar.id_inventory) != get_charact_id_from_item_class(inventar.item_available_2) then
         update inventory
            set
            item_available_2 = null
          where id_inventory = inventar.id_inventory;
      end if;

      -- slot 3 
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


drop procedure random_generating_items_in_player_inventory;
drop function random_gen_item_id;
drop function get_player_class;
drop function get_charact_id_from_item_class;
drop procedure check_item_class_restriction;
alter table inventory drop constraint chk_equipped_item;

drop package inventory_package;


create or replace package inventory_package as
   function random_gen_item_id return number;
   procedure random_generating_items_in_player_inventory;
   function get_player_class (
      p_id_inventory caracter.id_inventory%type
   ) return integer;
   function get_charact_id_from_item_class (
      p_id_item item.id_item%type
   ) return integer;
   procedure check_item_class_restriction;
end inventory_package;
/

create or replace package body inventory_package as
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
         v_max
      );
   end;
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

execute inventory_package.random_generating_items_in_player_inventory;

select *
  from inventory;

execute inventory_package.check_item_class_restriction;
select *
  from inventory;