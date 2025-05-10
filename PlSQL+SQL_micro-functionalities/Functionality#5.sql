   set SERVEROUTPUT on;

   /*
    Functionality 5:
    core: valideaza daca itemele echipate (random), in sloturile de inventar ale playerilor sunt corespunzatoare conform clasei
    - 1 functie care returneaza o valoare random care sa fie alocata la item si sa reprezinte id_item cumparat, momentan la nivel de simulare
    - 1 procedura care basically iimi updateaza inventory si imi plaseaza pe sloturi itemele random
    - 1 procedura care imi pune in loc de itemele gresite a dummy item(30001)
*/

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



create or replace procedure random_generating_items_in_player_inventory as
begin
--for slot 1
   update inventory
      set
      item_available_1 = random_gen_item_id;
      --for slot 2
   update inventory
      set
      item_available_2 = random_gen_item_id;
   --for slot 1
   update inventory
      set
      item_available_2 = random_gen_item_id;
end;

execute random_generating_items_in_player_inventory;


create or replace function get_player_class (
   p_id_inventory caracter.id_inventory%type
) return integer is
   v_id integer;
begin
   select id_inventory
     into v_id
     from caracter
    where id_inventory = p_id_inventory;

   return v_id;
end;


create or replace procedure validare_iteme_conform_clasa as
begin
   
end;

select * from caracter;