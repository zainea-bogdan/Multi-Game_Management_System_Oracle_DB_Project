--    set SERVEROUTPUT ON
-- declare
--    v_id_genre   genre.id_genre%type;
--    v_genre_name genre.genre_name%type;
-- begin
--    select id_genre,
--           genre_name
--      into
--       v_id_genre,
--       v_genre_name
--      from genre
--     where id_genre = 6;
--    dbms_output.put_line('id genre selected is: '
--                         || v_id_genre
--                         || ' si numele este: '
--                         || v_genre_name);
-- end;


--    set SERVEROUTPUT ON
-- declare
--    v_item_price item.item_price%type;
-- begin
--    select count(id_item)
--      into v_item_price
--      from item
--     where item_price > 9000;
--    dbms_output.put_line('nr itemelor care sunt peste 9000 este de: ' || v_item_price);
-- end;



--    set SERVEROUTPUT ON
--    accept v_for_comparison prompt "introdu valoarea cu care vrei sa compari preturile itemelor: "
-- declare
--    v_item_price     item.item_price%type;
--    v_for_comparison number;
-- begin
--    v_for_comparison := 0;
--    select count(id_item)
--      into v_item_price
--      from item
--     where item_price > &v_for_comparison;
--    dbms_output.put_line('nr itemelor care sunt peste 9000 este de: ' || v_item_price);
-- end;

