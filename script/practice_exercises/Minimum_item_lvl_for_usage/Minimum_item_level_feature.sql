/*ensuring that we dropped any previous try to implement this feature*/

drop table level_caracter;
drop trigger t_check_equpped_item_level_requirement; 

/*this command is used in case you accidently drop the table*/
FLASHBACK table level_caracter to before drop;

/*the script for creating the table level_caracter for caracters level, i haven t used the view because this level and coins need/can be used in other queries too, and have modifcation */
create table level_caracter as 
SELECT cp.id_party,c.id_caracter,trunc((SUM(mq.main_quest_reward)+SUM(sq.side_quest_reward))/count(c.id_character_party),2) COINS ,trunc((SUM(mq.main_quest_experience_points)+SUM(sq.side_quest_experience_points))/count(c.id_character_party),2) EXPERIENCE
,(CASE
WHEN trunc((SUM(mq.main_quest_experience_points)+SUM(sq.side_quest_experience_points))/count(c.id_character_party),2) >= 1000 AND trunc((SUM(mq.main_quest_experience_points)+SUM(sq.side_quest_experience_points))/count(c.id_character_party),2) <1100 THEN 1
WHEN trunc((SUM(mq.main_quest_experience_points)+SUM(sq.side_quest_experience_points))/count(c.id_character_party),2) >= 1100 AND trunc((SUM(mq.main_quest_experience_points)+SUM(sq.side_quest_experience_points))/count(c.id_character_party),2) <1200 THEN 2
WHEN trunc((SUM(mq.main_quest_experience_points)+SUM(sq.side_quest_experience_points))/count(c.id_character_party),2) >= 1200 AND trunc((SUM(mq.main_quest_experience_points)+SUM(sq.side_quest_experience_points))/count(c.id_character_party),2) <1300 THEN 3
WHEN trunc((SUM(mq.main_quest_experience_points)+SUM(sq.side_quest_experience_points))/count(c.id_character_party),2) >= 1300 AND trunc((SUM(mq.main_quest_experience_points)+SUM(sq.side_quest_experience_points))/count(c.id_character_party),2) <1500 THEN 4
WHEN trunc((SUM(mq.main_quest_experience_points)+SUM(sq.side_quest_experience_points))/count(c.id_character_party),2) >= 1500 AND trunc((SUM(mq.main_quest_experience_points)+SUM(sq.side_quest_experience_points))/count(c.id_character_party),2) <1800 THEN 5
else 99
end) level_caracter
FROM character_party cp 
INNER JOIN main_quest mq ON cp.id_party=mq.id_party
INNER JOIN side_quest sq ON cp.id_party=sq.id_party
INNER JOIN caracter c ON c.id_character_party=cp.id_party
INNER JOIN game_account_caracter gac ON gac.id_caracter=c.id_caracter
INNER JOIN game g ON gac.id_game = g.id_game
where g.id_game=100
GROUP BY cp.id_party,c.id_caracter;

/*checking to see how the table look like*/
select * from level_caracter; 

/*ensuring its integrity by implementing foreign key and composed primary key*/
alter table level_caracter 
add
(CONSTRAINT FK_id_party_level FOREIGN KEY (id_party)references character_party(id_party),
CONSTRAINT FK_id_caracter_level FOREIGN KEY (id_caracter)references caracter(id_caracter),
CONSTRAINT PK_nume_caracter PRIMARY KEY (id_party,id_caracter));

/*checking again the table*/
select * from level_caracter; 

/*updating item_minimum level uasge - i ahve used random function to fasten the process the updating each item minimum level.*/
update item
set minimum_level_of_usage =  DBMS_RANDOM.VALUE(1,5);

/*seeing thte new minimum level_usages of the items*/
select * from item;
/*commit if you lke the selected levels*/
commit;

/*adjusting the invetory table to create a flag for making unpacking of an equipped item that doesn t respect the minimum_level_usage rule*/
alter table inventory add
(chk_lvl_flag integer DEFAULT 0);

/*checking to be sure that the new column have been added*/
select * from inventory;

/*updating the flag if in any invetory there is and equipped item that doesnt respect the minimum level rule */
update inventory
set chk_lvl_flag = 1
where id_inventory in 
(select inv.id_inventory
from level_caracter lc
INNER JOIN caracter c ON c.id_caracter=lc.id_caracter
INNER JOIN inventory inv ON c.id_inventory=inv.id_inventory
INNER JOIN item i ON inv.item_equipped=i.id_item
where i.id_item = inv.item_equipped and lc.level_caracter < i.minimum_level_of_usage);

/*seeing the update*/
select * from inventory;

/*unpacking the item equipped for the uncoresponding inventories*/
update inventory 
set item_equipped = null 
where chk_lvl_flag=1;

select * from inventory;

/*reseting the flag*/
update inventory 
set chk_lvl_flag=0;

rollback;


/*automating the process of unpacking an item based on */

CREATE OR REPLACE TRIGGER t_check_equpped_item_level_requirement 
AFTER UPDATE OR INSERT on inventory
Begin
update inventory
set chk_lvl_flag = 1
where id_inventory in 
(select inv.id_inventory
from level_caracter lc  
INNER JOIN caracter c ON c.id_caracter=lc.id_caracter
INNER JOIN inventory inv ON c.id_inventory=inv.id_inventory
INNER JOIN item i ON inv.item_equipped=i.id_item
where i.id_item = inv.item_equipped and lc.level_caracter < i.minimum_level_of_usage);
update inventory 
set item_equipped = null 
where chk_lvl_flag=1;
update inventory 
set chk_lvl_flag=0;
end;

