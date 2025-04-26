/*ensure that you dropped all the new tables added to the basics one, if you tried to implement this feature before :)*/

DROP TABLE currency CASCADE CONSTRAINTS ;
DROP SEQUENCE counter_currency;

/*Creating a sequence for new currency table id + creating the table +inserts in it - per region */

create sequence counter_currency start with 60001 increment by 1 maxvalue 60005 nocycle nocache;


create table currency
(
    id_currency integer primary key,
    currency_name varchar2(255) UNIQUE,
    id_region integer not null UNIQUE,
    currency_conversion NUMBER(4,3),
    FOREIGN KEY (id_region) REFERENCES region(id_region)
)

INSERT INTO currency VALUES(counter_currency.NEXTVAL,'global currency',5103,null);
INSERT INTO currency VALUES(counter_currency.NEXTVAL,'minerals',5101,2);
INSERT INTO currency VALUES(counter_currency.NEXTVAL,'frost_marks',5102,0.5);

/*testing to see how the table currency looks like */
select * from currency;

/*selecting the old reward from main quests and seeing how the adaptation to the currency for the region 5102,5101 would look like*/

select mq.main_quest_name, mq.id_region,
mq.main_quest_reward,
(CASE 
WHEN mq.id_region=5102 THEN mq.main_quest_reward*(select currency_conversion from currency where id_region=5102)-1
WHEN mq.id_region=5101 THEN mq.main_quest_reward*(select currency_conversion from currency where id_region=5101)
else mq.main_quest_reward
END) as test_conversion
FROM main_quest mq
INNER JOIN currency curr ON curr.id_region=mq.id_region;

/*starting to update*/
SAVEPOINT before_converting_main_quest_rewards;

UPDATE main_quest
SET main_quest_reward = main_quest_reward*(select currency_conversion from currency where id_region=5102)-1
where main_quest.id_region=5102;

UPDATE main_quest
SET main_quest_reward = main_quest_reward*(select currency_conversion from currency where id_region=5101)
where main_quest.id_region=5101;

/*i setted a rollback in case something wents wrong with the update or idk :)*/
rollback to savepoint before_converting_main_quest_rewards;
/*execute the commit once you ensured that the update was made correctly*/
Commit;

/*doing the same thing for side quest as well, starting off with seeing the reward change*/

select sq.side_quest_name, sq.id_region,
sq.side_quest_reward,
(CASE 
WHEN sq.id_region=5102 THEN sq.side_quest_reward*(select currency_conversion from currency where id_region=5102)-1
WHEN sq.id_region=5101 THEN sq.side_quest_reward*(select currency_conversion from currency where id_region=5101)
else sq.side_quest_reward
END) as test_conversion
FROM side_quest sq
INNER JOIN currency curr ON curr.id_region=sq.id_region;

/*starting the update for side quest rewards*/

SAVEPOINT before_updates_from_side_quest_reward;


UPDATE side_quest
SET side_quest_reward = side_quest_reward*(select currency_conversion from currency where id_region=5102)-1
where side_quest.id_region=5102;

UPDATE side_quest
SET side_quest_reward = side_quest_reward*(select currency_conversion from currency where id_region=5101)
where side_quest.id_region=5101;

/*again a rollback option just to be sure*/
ROLLBACK TO SAVEPOINT before_updates_from_side_quest_reward;

/*execute the commit button if you are 100% sure of updates*/
Commit;

/*adapting the price of the items according to the new currencies*/

SELECT gdmh.merchant_name,gd.guild_name,gd.id_region,it.item_price,
(CASE 
WHEN gd.id_region=5102 THEN it.item_price*(select currency_conversion from currency where id_region=5102)-1
WHEN gd.id_region=5101 THEN it.item_price*(select currency_conversion from currency where id_region=5101)
else it.item_price
END) as conversion
FROM item it
INNER JOIN guild_merchant gdmh ON it.id_merchant=gdmh.id_merchant
INNER JOIN guild gd ON gd.id_guild=gdmh.id_guild_of_origin;

/*starting to make the update in the item*/

SAVEPOINT before_update_items;

update item
set item_price= item_price*(select currency_conversion from currency where id_region=5102)-1
where id_merchant in (select id_merchant from guild_merchant where id_guild_of_origin IN (select id_guild from guild where id_region=5102));


update item
set item_price= item_price*(select currency_conversion from currency where id_region=5101)
where id_merchant in (select id_merchant from guild_merchant where id_guild_of_origin IN (select id_guild from guild where id_region=5101));

/*wanting to see how the price change would look just to be sure*/
select * from item;

 /*adding a rollback option to be sure that everything is alright*/ 
rollback to savepoint before_update_items;

/*commit the changes*/
commit;

/*AUTOMATION OF THIS TASKS OF ADAPTING MAIN AND SIDE QUEST REWARDS, with */

/*makign sure that no triggers like this ones were created before*/
drop trigger t_before_adaptare_la_curs_valutar;
drop trigger t_after_adaptare_la_curs_valutar;

/*wanting to see the starting form of these three tables before a change */
select * from main_quest where id_region=5101;
select * from side_quest where id_region=5101;
select id_item,id_merchant,item_price from item 
where id_merchant in 
(select id_merchant 
from guild_merchant 
where id_guild_of_origin 
IN (select id_guild from guild where id_region=(select id_region from region where id_region=5101)));

/*creating the triggers for doing the currency adaptation*/

CREATE OR REPLACE TRIGGER t_before_adaptare_la_curs_valutar
BEFORE UPDATE ON currency 
Begin
UPDATE main_quest
SET main_quest_reward = main_quest_reward/(select currency_conversion from currency where id_region=5102)+1
where main_quest.id_region=5102;
UPDATE main_quest
SET main_quest_reward = main_quest_reward/(select currency_conversion from currency where id_region=5101)
where main_quest.id_region=5101;
UPDATE side_quest
SET side_quest_reward = side_quest_reward/(select currency_conversion from currency where id_region=5102)+1
where side_quest.id_region=5102;
UPDATE side_quest
SET side_quest_reward = side_quest_reward/(select currency_conversion from currency where id_region=5101)
where side_quest.id_region=5101;
update item
set item_price= item_price/(select currency_conversion from currency where id_region=5101)
where id_merchant in (select id_merchant from guild_merchant where id_guild_of_origin IN (select id_guild from guild where id_region=5101));
end;


CREATE OR REPLACE TRIGGER t_after_adaptare_la_curs_valutar
AFTER UPDATE or INSERT ON currency 
Begin
UPDATE main_quest
SET main_quest_reward = main_quest_reward*(select currency_conversion from currency where id_region=5102)-1
where main_quest.id_region=5102;
UPDATE main_quest
SET main_quest_reward = main_quest_reward*(select currency_conversion from currency where id_region=5101)
where main_quest.id_region=5101;
UPDATE side_quest
SET side_quest_reward = side_quest_reward*(select currency_conversion from currency where id_region=5102)-1
where side_quest.id_region=5102;
UPDATE side_quest
SET side_quest_reward = side_quest_reward*(select currency_conversion from currency where id_region=5101)
where side_quest.id_region=5101;
update item
set item_price= item_price*(select currency_conversion from currency where id_region=5101)
where id_merchant in (select id_merchant from guild_merchant where id_guild_of_origin IN (select id_guild from guild where id_region=5101));
end;

/*testing the currency triggers*/
SAVEPOINT before_currency_trigger_change;
update currency
set currency_conversion =3
where id_region=5101;


select * from main_quest where id_region=5101;
select * from side_quest where id_region=5101;
select id_item,id_merchant,item_price from item 
where id_merchant in 
(select id_merchant 
from guild_merchant 
where id_guild_of_origin 
IN (select id_guild from guild where id_region=(select id_region from region where id_region=5101)));

/*creating a rollback option to ensure we can undo the change done by triggers*/
rollback to before_currency_trigger_change;
/*commit the changes if you want*/
commit;


