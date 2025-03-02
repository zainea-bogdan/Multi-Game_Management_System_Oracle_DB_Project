drop table genre cascade constraints;
drop table platform cascade constraints;
drop table game cascade constraints;
drop table game_review cascade constraints;
drop table player_account cascade constraints;
drop table clasa cascade constraints;
drop table region cascade constraints;
drop table guild cascade constraints;
drop table character_party cascade constraints;
drop table main_quest cascade constraints;
drop table guild_merchant cascade constraints;
drop table side_quest cascade constraints;
drop table item cascade constraints;
drop table inventory cascade constraints;
drop table caracter cascade constraints;
drop table game_account_caracter cascade constraints;
drop sequence counter_platform;
drop sequence counter_genre;
drop sequence counter_game;
drop sequence counter_player;
drop sequence counter_review;
drop sequence counter_clasa;
drop sequence counter_region;
drop sequence counter_guild;
drop sequence counter_party;
drop sequence counter_caracter;
drop sequence counter_inventory;
drop sequence counter_main_qst;
drop sequence counter_side_qst;
drop sequence counter_merchant;
drop sequence counter_item;


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
create sequence counter_main_qst start with 13001 increment by 1 maxvalue 20000 nocycle nocache;
create sequence counter_side_qst start with 20001 increment by 1 maxvalue 27000 nocycle nocache;
create sequence counter_merchant start with 27001 increment by 1 maxvalue 30000 nocycle nocache;
create sequence counter_item start with 30001 increment by 1 maxvalue 60000 nocycle nocache;


create table genre (
   id_genre   integer primary key,
   genre_name varchar2(100) not null unique
);


create table platform (
   id_platform   integer primary key,
   platform_name varchar2(100) not null unique
);


create table game (
   id_game     integer primary key,
   game_name   varchar2(100) not null unique,
   id_genre    integer not null,
   id_platform integer not null,
   constraint fk_id_genre foreign key ( id_genre )
      references genre ( id_genre ),
   constraint fk_id_platform foreign key ( id_platform )
      references platform ( id_platform )
);


create table player_account (
   id_player             integer primary key,
   player_name           varchar2(100) unique not null,
   player_email          varchar2(50) unique not null,
   player_password       varchar2(50) not null,
   account_creation_date date
);


create table game_review (
   id_review   integer primary key,
   id_player   integer not null,
   id_game     integer not null,
   game_rating integer not null,
   review_text varchar(255),
   constraint fk_review_id_game foreign key ( id_game )
      references game ( id_game ),
   constraint fk_review_id_player foreign key ( id_player )
      references player_account ( id_player ),
   constraint chk_review_rating
      check ( game_rating >= 1
         and game_rating <= 5 )
);


create table clasa (
   id_class          integer primary key,
   class_name        varchar2(50) not null unique,
   class_description varchar2(255)
);


create table region (
   id_region          integer primary key,
   region_name        varchar2(100) unique not null,
   region_description varchar2(255)
);


create table guild (
   id_guild          integer primary key,
   id_region         integer not null,
   guild_name        varchar2(80) not null unique,
   guild_description varchar2(255),
   guild_birthday    date not null,
   guild_tax         integer,
   superior_guild    integer,
   constraint fk_id_region_guild foreign key ( id_region )
      references region ( id_region )
);


create table character_party (
   id_party        integer primary key,
   id_guild_origin integer not null,
   party_name      varchar2(40) not null unique,
   party_motto     varchar2(255),
   constraint fk_party_guild_origin foreign key ( id_guild_origin )
      references guild ( id_guild )
);


create table main_quest (
   id_main_quest                integer primary key,
   id_region                    integer not null,
   id_guild                     integer not null,
   id_party                     integer not null,
   main_quest_name              varchar2(255) not null unique,
   main_quest_description       varchar2(255),
   main_quest_experience_points integer not null,
   main_quest_reward            integer not null,
   minimum_level_team           integer,
   main_quest_status            number(1) not null,
   constraint fk_id_guild_main_quest_guild foreign key ( id_guild )
      references guild ( id_guild ),
   constraint fk_id_guild_main_quest_party foreign key ( id_party )
      references character_party ( id_party ),
   constraint fk_id_guild_main_quest_region foreign key ( id_region )
      references region ( id_region )
);


create table guild_merchant (
   id_merchant        integer primary key,
   merchant_name      varchar2(255) unique not null,
   id_guild_of_origin integer not null,
   constraint fk_id_guild_merchant foreign key ( id_guild_of_origin )
      references guild ( id_guild )
);


create table side_quest (
   id_side_quest                integer primary key,
   id_region                    integer not null,
   id_merchant                  integer not null,
   id_party                     integer not null,
   side_quest_name              varchar2(255) not null unique,
   side_quest_description       varchar2(255),
   side_quest_experience_points integer not null,
   side_quest_reward            integer not null,
   minimum_level_team           integer,
   side_quest_status            number(1) not null,
   constraint fk_id_guild_side_quest_merchant foreign key ( id_merchant )
      references guild_merchant ( id_merchant ),
   constraint fk_id_guild_side_quest_party foreign key ( id_party )
      references character_party ( id_party ),
   constraint fk_id_guild_side_quest_region foreign key ( id_region )
      references region ( id_region )
);


create table item (
   id_item                integer primary key,
   id_game                integer not null,
   id_merchant            integer not null,
   character_class_id     integer not null,
   item_name              varchar2(100) unique not null,
   item_description       varchar2(255),
   item_price             integer not null,
   minimum_level_of_usage integer,
   constraint fk_item_game foreign key ( id_game )
      references game ( id_game ),
   constraint fk_item_merchant foreign key ( id_merchant )
      references guild_merchant ( id_merchant ),
   constraint fk_item_class foreign key ( character_class_id )
      references clasa ( id_class )
);


create table inventory (
   id_inventory     integer primary key,
   item_equipped    integer,
   item_available_1 integer not null,
   item_available_2 integer not null,
   item_available_3 integer not null,
   constraint chk_equipped_item
      check ( item_equipped in ( item_available_1,
                                 item_available_2,
                                 item_available_3 ) ),
   constraint fk_item_available_id1 foreign key ( item_available_1 )
      references item ( id_item ),
   constraint fk_item_available_id2 foreign key ( item_available_2 )
      references item ( id_item ),
   constraint fk_item_available_id3 foreign key ( item_available_3 )
      references item ( id_item )
);


create table caracter (
   id_caracter        integer primary key,
   caracter_name      varchar2(255) not null,
   id_character_party integer,
   id_inventory       integer not null,
   id_character_class integer not null,
   constraint fk_party_character foreign key ( id_character_party )
      references character_party ( id_party ),
   constraint fk_invetory_character foreign key ( id_inventory )
      references inventory ( id_inventory ),
   constraint fk_class_character foreign key ( id_character_class )
      references clasa ( id_class )
);


create table game_account_caracter (
   id_game     integer,
   id_player   integer,
   id_caracter integer,
   constraint fk_game_rel foreign key ( id_game )
      references game ( id_game ),
   constraint fk_player_rel foreign key ( id_player )
      references player_account ( id_player ),
   constraint fk_caracter_rel foreign key ( id_caracter )
      references caracter ( id_caracter ),
   constraint pk_composed_rel primary key ( id_game,
                                            id_player,
                                            id_caracter )
);