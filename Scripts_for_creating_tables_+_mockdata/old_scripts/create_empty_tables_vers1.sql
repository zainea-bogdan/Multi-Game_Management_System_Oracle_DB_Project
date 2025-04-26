
/*MAKING SURE THAT ALL TABLES+SEQUENCES ARE DELETED*/
DROP TABLE genre CASCADE CONSTRAINTS ;
DROP TABLE platform CASCADE CONSTRAINTS ;
DROP TABLE game CASCADE CONSTRAINTS ;
DROP TABLE game_review CASCADE CONSTRAINTS ;
DROP TABLE player_account CASCADE CONSTRAINTS ;
DROP TABLE clasa CASCADE CONSTRAINTS ;
DROP TABLE region CASCADE CONSTRAINTS ;
DROP TABLE guild CASCADE CONSTRAINTS ;
DROP TABLE character_party CASCADE CONSTRAINTS ;
DROP TABLE main_quest CASCADE CONSTRAINTS ;
DROP TABLE merchants CASCADE CONSTRAINTS ;
DROP TABLE side_quest CASCADE CONSTRAINTS ;
DROP TABLE item CASCADE CONSTRAINTS ;
DROP TABLE inventory CASCADE CONSTRAINTS ;
DROP TABLE caracter CASCADE CONSTRAINTS ;
DROP SEQUENCE counter_platform;
DROP SEQUENCE counter_genre;
DROP SEQUENCE counter_game;
DROP SEQUENCE counter_player;
DROP SEQUENCE counter_review;
DROP SEQUENCE counter_clasa;
DROP SEQUENCE counter_region;
DROP SEQUENCE counter_guild;
DROP SEQUENCE counter_party;
DROP SEQUENCE counter_caracter;
DROP SEQUENCE counter_inventory;

/*sequences for creating ids for each table*/ 
create sequence counter_platform start with 1 increment by 1 maxvalue 5 nocycle nocache;
create sequence counter_genre start with 6 increment by 1 maxvalue 99 nocycle nocache; 
create sequence counter_game start with 100 increment by 1 maxvalue 150 nocycle nocache; 
create sequence counter_player start with 151 increment by 1 maxvalue 2000 nocycle nocache; 
create sequence counter_review start with 2001 increment by 1 maxvalue 5000 nocycle nocache; 
create sequence counter_clasa start with 5001 increment by 1 maxvalue 5100 nocycle nocache; 
create sequence counter_region start with 5101 increment by 1 maxvalue 5300 nocycle nocache; 
create sequence counter_guild start with 5301 increment by 1 maxvalue 6000 nocycle nocache; 
create sequence counter_party start with 6001 increment by 1 maxvalue 9000 nocycle nocache; 
create sequence counter_caracter start with 9001 increment by 1 maxvalue 11000 nocycle nocache; 
create sequence counter_inventory start with 11001 increment by 1 maxvalue 13000 nocycle nocache; 

/*creating the tables*/
CREATE TABLE genre
(
    id_genre integer PRIMARY KEY,
    genre_name varchar2(100) NOT NULL UNIQUE
);


CREATE TABLE platform 
(
    id_platform integer PRIMARY KEY,
    platform_name varchar2(100) NOT NULL UNIQUE
);


CREATE TABLE game
(
    id_game integer PRIMARY KEY,
    game_name varchar2(100) NOT NULL UNIQUE,
    id_genre integer NOT NULL,
    id_platform integer NOT NULL, 
    CONSTRAINT FK_id_genre FOREIGN KEY (id_genre) REFERENCES genre(id_genre),
    CONSTRAINT FK_id_platform FOREIGN KEY (id_platform) REFERENCES platform(id_platform)
);


CREATE TABLE player_account
(
    id_player integer PRIMARY KEY,
    id_game integer NOT NULL,
    player_name varchar2(100)not null,
    player_email varchar2(50)unique not null ,
    player_password varchar2(50) not null,
    account_creation_date date,
    CONSTRAINT FK_id_game FOREIGN KEY (id_game) REFERENCES game(id_game)
);


CREATE TABLE game_review
(
id_review integer primary key,
id_player integer not null,
id_game integer not null,
game_rating integer not null,
review_text varchar(255), 
CONSTRAINT FK_review_id_game FOREIGN KEY (id_game) REFERENCES game(id_game),
CONSTRAINT FK_review_id_player FOREIGN KEY (id_player) REFERENCES player_account(id_player),
CONSTRAINT CHK_review_rating CHECK (game_rating >=1 AND game_rating <=5)
);


CREATE TABLE clasa
(
    id_class integer PRIMARY KEY,
    id_game integer not null, 
    class_name varchar2(50) not null unique,
    class_description varchar2(255),
    CONSTRAINT FK_clasa_game FOREIGN KEY (id_game) REFERENCES game(id_game)
);


CREATE TABLE region
(
    id_region integer PRIMARY KEY,
    id_game integer not null, 
    region_name varchar2(100) unique not null,
    region_description varchar2(255),
    CONSTRAINT FK_region_id_game FOREIGN KEY (id_game) REFERENCES game(id_game)
);


CREATE TABLE guild
(
    id_guild integer PRIMARY KEY,
    id_game integer not null,
    id_region integer not null,
    guild_name varchar2(80) not null UNIQUE,
    guild_description varchar2(255),
    guild_birthday date not null,
    guild_tax integer,
    superior_guild integer,
    CONSTRAINT FK_id_game_guild FOREIGN KEY (id_game) REFERENCES game(id_game),
    CONSTRAINT FK_id_region_guild FOREIGN KEY (id_region) REFERENCES region(id_region)
);


CREATE TABLE  character_party
(
    id_party integer PRIMARY KEY,
    id_game integer not null,
    id_guild_origin integer not null,
    party_name varchar2(40) not null unique,
    party_motto varchar2(255),
    CONSTRAINT FK_party_guild_origin FOREIGN KEY (id_guild_origin) REFERENCES guild(id_guild),
    CONSTRAINT FK_id_game_party FOREIGN KEY (id_game) REFERENCES game(id_game)
);


CREATE TABLE main_quest
(
    id_main_quest integer PRIMARY KEY,
    id_game integer not null,
    id_guild integer not null,
    id_party integer not null,
    main_quest_name varchar2(255) not null unique,
    main_quest_description varchar2(255),
    main_quest_experience_points integer not null,
    main_quest_reward integer not null,/*2 if the mission is completed | 1 if the mission is in progress |  0 if the mission is not finished*/
    main_quest_status NUMBER(1) not null,
    minimum_level_team integer,
    CONSTRAINT FK_id_guild_main_quest_game FOREIGN KEY (id_game) REFERENCES game(id_game),
    CONSTRAINT FK_id_guild_main_quest_guild FOREIGN KEY (id_guild) REFERENCES guild(id_guild),
    CONSTRAINT FK_id_guild_main_quest_party FOREIGN KEY (id_party) REFERENCES character_party(id_party)
);



CREATE TABLE merchants
(
    id_merchant integer PRIMARY KEY,
    id_game integer not null,
    merchant_name varchar2(255) unique not null,
    id_guild_of_origin integer not null,
    CONSTRAINT FK_id_game_merchant FOREIGN KEY (id_game) REFERENCES game(id_game),
    CONSTRAINT FK_id_guild_merchant FOREIGN KEY (id_guild_of_origin) REFERENCES guild(id_guild)
);


CREATE TABLE side_quest
(
    id_side_quest integer PRIMARY KEY,
    id_game integer not null,
    id_merchant integer not null,
    id_party integer not null,
    side_quest_name varchar2(255) not null unique,
    side_quest_description varchar2(255),
    side_quest_experience_points integer not null,
    side_quest_reward integer not null,/*2 if the mission is completed | 1 if the mission is in progress |  0 if the mission is not finished*/
    side_quest_status NUMBER(1) not null,
    minimum_level_team integer,
    CONSTRAINT FK_id_guild_side_quest_game FOREIGN KEY (id_game) REFERENCES game(id_game),
    CONSTRAINT FK_id_guild_side_quest_merchant FOREIGN KEY (id_merchant) REFERENCES merchants(id_merchant),
    CONSTRAINT FK_id_guild_side_quest_party FOREIGN KEY (id_party) REFERENCES character_party(id_party)    
);


CREATE TABLE item
(
    id_item integer PRIMARY KEY,
    id_game integer not null,
    id_merchant integer not null,
    character_class_id integer not null,
    item_name varchar2(100) unique not null,
    item_description varchar2(255),
    item_price integer not null,
    minimum_level_of_usage integer,
    CONSTRAINT FK_item_game FOREIGN KEY (id_game) REFERENCES game(id_game),
    CONSTRAINT FK_item_merchant FOREIGN KEY (id_merchant) REFERENCES merchants(id_merchant),
    CONSTRAINT FK_item_class FOREIGN KEY (character_class_id) REFERENCES clasa(id_class)
);


CREATE TABLE inventory
(
    id_inventory integer PRIMARY KEY,
    id_game not null,
    item_equipped integer,
    item_available_1 integer not null,
    item_available_2 integer not null,
    item_available_3 integer not null,
    CONSTRAINT CHK_equipped_item CHECK( item_equipped in (item_available_1,item_available_2,item_available_3)),
    CONSTRAINT FK_item_available_id1 FOREIGN KEY (item_available_1) REFERENCES item(id_item),
    CONSTRAINT FK_item_available_id2 FOREIGN KEY (item_available_2) REFERENCES item(id_item),
    CONSTRAINT FK_item_available_id3 FOREIGN KEY (item_available_3) REFERENCES item(id_item),
    CONSTRAINT FK_inventory_game FOREIGN KEY (id_game) REFERENCES game(id_game)
);


CREATE TABLE caracter
(
    caracter_id integer PRIMARY KEY,
    caracter_name varchar(255) not null,
    id_game integer not null,
    id_player integer not null unique, 
    id_character_party integer, 
    id_inventory integer not null,
    id_character_class integer not null,
    CONSTRAINT FK_character_game FOREIGN KEY (id_game) REFERENCES game(id_game),
    CONSTRAINT fk_player_character FOREIGN KEY (id_player) REFERENCES player_account(id_player),
    CONSTRAINT fk_party_character FOREIGN KEY (id_character_party) REFERENCES character_party(id_party),
    CONSTRAINT fk_invetory_character FOREIGN KEY (id_inventory) REFERENCES inventory(id_inventory),
    CONSTRAINT fk_class_character FOREIGN KEY (id_character_class) REFERENCES clasa(id_class)
);
