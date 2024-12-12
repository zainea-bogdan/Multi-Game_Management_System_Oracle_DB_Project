/*exemple genre-inserted*/

INSERT into genre VALUES (counter_genre.NEXTVAL, 'Medieval');
INSERT into genre VALUES (counter_genre.NEXTVAL, 'Cyberpunk');
INSERT INTO genre VALUES (counter_genre.NEXTVAL, 'Steampunk');
INSERT INTO genre VALUES (counter_genre.NEXTVAL, 'Fantasy');
INSERT INTO genre VALUES (counter_genre.NEXTVAL, 'Sci-Fi');
INSERT INTO genre VALUES (counter_genre.NEXTVAL, 'Post-Apocalyptic');
INSERT INTO genre VALUES (counter_genre.NEXTVAL, 'Horror');
INSERT INTO genre VALUES (counter_genre.NEXTVAL, 'Mythological');
INSERT INTO genre VALUES (counter_genre.NEXTVAL, 'Western');
INSERT INTO genre VALUES (counter_genre.NEXTVAL, 'Historical');


/*exemple platforme-inserted*/

INSERT INTO platform VALUES(counter_platform.NEXTVAL,'PC');
INSERT INTO platform VALUES(counter_platform.NEXTVAL,'PS4');
INSERT INTO platform VALUES(counter_platform.NEXTVAL,'XBOX');
INSERT INTO platform VALUES(counter_platform.NEXTVAL,'NINTENDO');
INSERT INTO platform VALUES(counter_platform.NEXTVAL,'VR');


/*exemple jocuri-inserted*/
INSERT INTO game VALUES(counter_game.NEXTVAL,'Fantasy_RPG',9,1);
INSERT INTO game VALUES(counter_game.NEXTVAL,'Cyberpunk_RPG',7,2);


/*player model*/
INSERT INTO player_account VALUES(counter_player.NEXTVAL,'user1','user1@email.com','1resu',TO_DATE('12 december 2024', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 'user245', 'user245@email.com', '542resu', TO_DATE('15-01-2023', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 'user567', 'user567@email.com', '765resu', TO_DATE('10-02-2022', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 'user893', 'user893@email.com', '398resu', TO_DATE('05-03-2021', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 'user1024', 'user1024@email.com', '4201resu', TO_DATE('20-04-2020', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 'user1490', 'user1490@email.com', '0941resu', TO_DATE('25-05-2019', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 'user1625', 'user1625@email.com', '5261resu', TO_DATE('01-06-2018', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 'user1890', 'user1890@email.com', '0981resu', TO_DATE('10-07-2017', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 'user2056', 'user2056@email.com', '6502resu', TO_DATE('15-08-2016', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 'user2350', 'user2350@email.com', '0532resu', TO_DATE('20-09-2015', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 'user2789', 'user2789@email.com', '9872resu', TO_DATE('05-10-2014', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 'user3123', 'user3123@email.com', '3213resu', TO_DATE('12-11-2013', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 'user3412', 'user3412@email.com', '2143resu', TO_DATE('22-12-2012', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 'user3789', 'user3789@email.com', '9873resu', TO_DATE('01-01-2011', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 'user4120', 'user4120@email.com', '0214resu', TO_DATE('15-01-2010', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 'user4502', 'user4502@email.com', '2054resu', TO_DATE('28-02-2019', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 'user4890', 'user4890@email.com', '0984resu', TO_DATE('10-03-2018', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 'user5123', 'user5123@email.com', '3215resu', TO_DATE('15-04-2017', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 'user5400', 'user5400@email.com', '0045resu', TO_DATE('20-05-2016', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 'user5678', 'user5678@email.com', '8765resu', TO_DATE('25-06-2015', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 'user6000', 'user6000@email.com', '0006resu', TO_DATE('10-07-2013', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 'user6321', 'user6321@email.com', '1236resu', TO_DATE('15-08-2014', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 'user6789', 'user6789@email.com', '9876resu', TO_DATE('20-09-2012', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 'user7001', 'user7001@email.com', '1007resu', TO_DATE('05-10-2011', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 'user7500', 'user7500@email.com', '0057resu', TO_DATE('10-11-2023', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 'user8000', 'user8000@email.com', '0008resu', TO_DATE('01-12-1999', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 'user1508', 'user1508@email.com', '8051resu', TO_DATE('20-12-2001', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 'user1488', 'user1488@email.com', '8841resu', TO_DATE('09-05-2016', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 'user9034', 'user9034@email.com', '4309resu', TO_DATE('12-08-2021', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 'user5458', 'user5458@email.com', '8545resu', TO_DATE('07-09-2020', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 'user2534', 'user2534@email.com', '4352resu', TO_DATE('29-04-2015', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 'user6343', 'user6343@email.com', '3436resu', TO_DATE('06-12-2007', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 'user7309', 'user7309@email.com', '9037resu', TO_DATE('29-05-2022', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 'user6829', 'user6829@email.com', '9286resu', TO_DATE('12-05-2021', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 'user2915', 'user2915@email.com', '5192resu', TO_DATE('26-01-2022', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL,  'user1670', 'user1670@email.com', '0761resu', TO_DATE('05-12-2021', 'DD-MM-YYYY'));


/*game review*/
INSERT INTO game_review VALUES(counter_review.NEXTVAL,151,100,5,NULL);
INSERT INTO game_review VALUES(counter_review.NEXTVAL,152,100,4,NULL);
INSERT INTO game_review VALUES(counter_review.NEXTVAL,153,100,3,NULL);
INSERT INTO game_review VALUES(counter_review.NEXTVAL,154,100,2,NULL);
INSERT INTO game_review VALUES(counter_review.NEXTVAL,155,100,1,NULL);
INSERT INTO game_review VALUES(counter_review.NEXTVAL,156,100,5,NULL);
INSERT INTO game_review VALUES(counter_review.NEXTVAL,157,100,3,NULL);
INSERT INTO game_review VALUES(counter_review.NEXTVAL,158,100,4,NULL);



/*clase */
INSERT INTO clasa VALUES (counter_clasa.NEXTVAL, 'Warrior',NULL);
INSERT INTO clasa VALUES (counter_clasa.NEXTVAL, 'Mage',NULL);
INSERT INTO clasa VALUES (counter_clasa.NEXTVAL, 'Tank',NULL);
INSERT INTO clasa VALUES (counter_clasa.NEXTVAL, 'Ranger',NULL);
INSERT INTO clasa VALUES (counter_clasa.NEXTVAL, 'Craftman',NULL);
INSERT INTO clasa VALUES (counter_clasa.NEXTVAL, 'Healer',NULL);
INSERT INTO clasa VALUES (counter_clasa.NEXTVAL, 'Public_Speaker',NULL);



/*idei regiuni*/
INSERT INTO region VALUES (counter_region.NEXTVAL, 'Ashenreach Wastes','A scorched volcanic plain cloaked in ash and smoke. Rivers of molten lava flow through blackened ruins of an ancient fire-worshiping civilization. Fiery elementals and ember wolves roam this unforgiving land.');
INSERT INTO region VALUES (counter_region.NEXTVAL, 'Frostmire Tundra', 'An endless frozen wilderness of icy winds and snow-covered plains. Crystalline glaciers conceal secrets of a lost age, while frost giants and ice wraiths stalk the blizzards.');
INSERT INTO region VALUES (counter_region.NEXTVAL, 'Verdant Hollow', 'A lush, mystical forest teeming with ancient trees and glowing flora. Hidden groves harbor fae creatures and druids, but shadowy beasts hunt those who wander too far.');

/*guild ideas*/
INSERT INTO guild VALUES(counter_guild.NEXTVAL,5103,'The Grovekeepers','A druidic guild devoted to preserving the balance of the mystical forest. They command nature power and guard sacred groves, striking down those who threaten the lands harmony.',TO_DATE('01-01-1989', 'DD-MM-YYYY'),15,NULL);
INSERT INTO guild VALUES(counter_guild.NEXTVAL,5101,'The Emberforge Syndicate','Masters of fire and metal, this guild of blacksmiths and artificers crafts legendary weapons in the heart of molten forges. Their creations are sought across the lands but come at a heavy price.',TO_DATE('01-02-1989', 'DD-MM-YYYY'),20,5301);
INSERT INTO guild VALUES(counter_guild.NEXTVAL,5102,'The Glacial Wardens','Guardians of the frozen wilds, the Wardens are rugged survivalists and hunters. They protect ancient secrets buried within the glaciers and keep the tundras deadly creatures at bay.',TO_DATE('01-01-1990', 'DD-MM-YYYY'),10,5301);
INSERT INTO guild VALUES(counter_guild.NEXTVAL,5101,'The Molten Anvil','An elite group of smiths who craft fire-infused weapons and armor, wielding the secrets of molten energy to forge items of devastating power.',TO_DATE('02-03-1992', 'DD-MM-YYYY'),8,5302);
INSERT INTO guild VALUES(counter_guild.NEXTVAL,5102,'The Frostbound Hunters','Expert trackers and beast tamers who patrol the tundra, hunting monstrous threats and mastering the icy wilderness alongside their loyal frost wolves.',TO_DATE('02-07-1999', 'DD-MM-YYYY'),8,5303);


/*parties*/
INSERT INTO character_party VALUES(counter_party.NEXTVAL, 5301,'PARTY_0','MOTTO_PARTY_0');
INSERT INTO character_party VALUES(counter_party.NEXTVAL, 5302, 'Thunderclad Order', 'Forge the Future');
INSERT INTO character_party VALUES(counter_party.NEXTVAL, 5302, 'Blazeguard', 'Together We Stand');
INSERT INTO character_party VALUES(counter_party.NEXTVAL, 5303, 'Venomguard', 'Death Before Defeat');
INSERT INTO character_party VALUES(counter_party.NEXTVAL, 5303, 'Ashenwatch', 'Never Back Down');
INSERT INTO character_party VALUES(counter_party.NEXTVAL, 5304, 'Iron Serpents', 'By Blade and Blood');
INSERT INTO character_party VALUES(counter_party.NEXTVAL, 5304, 'Shattered Order', 'Glory to the Brave');
INSERT INTO character_party VALUES(counter_party.NEXTVAL, 5305, 'Cyber Sentinels', 'Strength in Unity');
INSERT INTO character_party VALUES(counter_party.NEXTVAL, 5305, 'Shadowborn', 'Only the Strong Survive');

/*main quest*/
INSERT INTO main_quest VALUES(counter_main_qst.NEXTVAL,5101,5302,6001,'The Molten Trail','Escort a caravan of Emberforge blacksmiths across a lava river.',100,100,null,0);
INSERT INTO main_quest VALUES(counter_main_qst.NEXTVAL,5101,5302,6002,'Cinders of the Past:','Recover a lost fire relic from an ancient, ash-choked temple.',500,500,null,0);
INSERT INTO main_quest VALUES(counter_main_qst.NEXTVAL,5101,5302,6009,'Emberwolf Hunt:','Track and slay a pack of ember wolves terrorizing a nearby camp.',150,200,null,0);
INSERT INTO main_quest VALUES(counter_main_qst.NEXTVAL,5101,5302,6004,'Infernal Heart','Capture a Fire Elemental to power the forges of a blacksmith guild.',200,300,null,0);
INSERT INTO main_quest VALUES(counter_main_qst.NEXTVAL,5101,5302,6005,'The Ashen Caravan:','Rescue traders trapped in a volcanic eruption.',250,250,null,0);
INSERT INTO main_quest VALUES(counter_main_qst.NEXTVAL,5101,5302,6006,'Shattered Spire:','Investigate the sudden collapse of a basalt spire and the creatures it released.',250,300,null,0);
INSERT INTO main_quest VALUES(counter_main_qst.NEXTVAL,5101,5302,6007,'Crimson Contract: ','Stop a mercenary group, the Cinderblades, from raiding a forge.',170,200,null,0);
INSERT INTO main_quest VALUES(counter_main_qst.NEXTVAL,5101,5302,6008,'Smoke and Mirrors:','Dispel a magical smoke barrier surrounding a ruined fire temple',460,600,null,0);
INSERT INTO main_quest VALUES(counter_main_qst.NEXTVAL,5101,5302,6002,'Molten Ambush:',' Lay a trap to defeat raiders hiding in lava caverns.',800,700,null,0);
INSERT INTO main_quest VALUES(counter_main_qst.NEXTVAL,5101,5302,6003,'Rekindling the Flame:','Reignite an ancient forge rumored to craft legendary weapons.',1000,1000,null,0);
INSERT INTO main_quest VALUES(counter_main_qst.NEXTVAL,5101,5305,6001,'Veins of Fire','Seal off a lava fissure threatening to destroy a nearby village.',200,300,null,0);
INSERT INTO main_quest VALUES(counter_main_qst.NEXTVAL,5101,5305,6003,'The Ash Revenant:','Banish the fiery spirit of an ancient warlord haunting the region.',1000,1000,null,0);
INSERT INTO main_quest VALUES(counter_main_qst.NEXTVAL,5101,5305,6009,'The Inferno Core','Retrieve a molten gem from deep within an unstable volcano.',400,700,null,0);
INSERT INTO main_quest VALUES(counter_main_qst.NEXTVAL,5101,5305,6004,'Trail of Ashes','Follow the path of a mysterious figure leaving scorched earth in their wake',400,600,null,0);
INSERT INTO main_quest VALUES(counter_main_qst.NEXTVAL,5101,5305,6005,'The Soot Thieves','Stop bandits stealing rare volcanic minerals for illicit trade',200,300,null,0);
INSERT INTO main_quest VALUES(counter_main_qst.NEXTVAL,5101,5305,6003,'Forged in Flame:','Test your strength in the Emberforge Syndicate’s brutal arena trials',2000,2000,null,0);
INSERT INTO main_quest VALUES(counter_main_qst.NEXTVAL,5101,5305,6007,'The Lava Leviathan:','Defeat a monstrous beast emerging from the molten depths.',1000,1000,null,0);
INSERT INTO main_quest VALUES(counter_main_qst.NEXTVAL,5101,5305,6002,'Burning Secrets','Decode cryptic carvings found in a buried ash temple.',1000,1000,null,0);
INSERT INTO main_quest VALUES(counter_main_qst.NEXTVAL,5101,5305,6008,'Cinderstorm',' Survive and escape an unnatural storm of fiery ash.',400,400,null,0);
INSERT INTO main_quest VALUES(counter_main_qst.NEXTVAL,5101,5305,6002,'Emberforged Warband','Defend a town against a rampaging mercenary guild armed with fire-forged weapons.',1000,1000,null,0);
INSERT INTO main_quest VALUES(counter_main_qst.NEXTVAL,5102,5303,6001,'Blizzard Rescue:','Locate a lost hunting party stranded in a deadly blizzard.',300,500,null,0);
INSERT INTO main_quest VALUES(counter_main_qst.NEXTVAL,5102,5303,6002,'The Frozen Titan:','Defeat a frost giant guarding a sacred glacier.',1000,1000,null,0);
INSERT INTO main_quest VALUES(counter_main_qst.NEXTVAL,5102,5303,6003,'Wraiths of the Ice:','Cleanse an ancient tomb of ice wraiths haunting its halls',1000,1000,null,0);
INSERT INTO main_quest VALUES(counter_main_qst.NEXTVAL,5102,5303,6004,'Frost Wolf Pact','Tame a frost wolf to gain the trust of the Frostbound Hunters.',1000,1000,null,0);
INSERT INTO main_quest VALUES(counter_main_qst.NEXTVAL,5102,5303,6005,'The Glacial Relic','Retrieve a magical artifact frozen within an ancient glacie',1000,1000,null,0);
INSERT INTO main_quest VALUES(counter_main_qst.NEXTVAL,5102,5303,6006,'Tracks in the Snow:','Hunt a monstrous yeti terrorizing nearby villages',1000,1000,null,0);
INSERT INTO main_quest VALUES(counter_main_qst.NEXTVAL,5102,5303,6008,'The Frostbound Trial:','Complete survival challenges set by the Glacial Wardens.',1000,1000,null,0);
INSERT INTO main_quest VALUES(counter_main_qst.NEXTVAL,5102,5303,6008,'Breaking the Ice:','Escort a merchant caravan across a fragile frozen lake.',1000,1000,null,0);
INSERT INTO main_quest VALUES(counter_main_qst.NEXTVAL,5102,5303,6009,'Frozen Whispers:','Investigate mysterious whispers leading travelers astray in a snowstorm.',1000,1000,null,0);
INSERT INTO main_quest VALUES(counter_main_qst.NEXTVAL,5102,5303,6004,'Avalanche Warning:','Rescue villagers trapped under the aftermath of a massive avalanche',1000,1000,null,0);
INSERT INTO main_quest VALUES(counter_main_qst.NEXTVAL,5102,5305,6001,'The Shattered Glacie',' Explore a newly-formed ice cavern after a glacier collapses.',1000,100,null,0);
INSERT INTO main_quest VALUES(counter_main_qst.NEXTVAL,5102,5305,6002,'Glacial Beacon:','Restore an ancient magical beacon to guide lost travelers through the tundra',300,100,null,0);
INSERT INTO main_quest VALUES(counter_main_qst.NEXTVAL,5102,5305,6003,'Frostbite Siege','Defend a village against marauders during an extreme cold front.',400,100,null,0);
INSERT INTO main_quest VALUES(counter_main_qst.NEXTVAL,5102,5305,6004,'Crystals of Icefall','Retrieve rare frost crystals from dangerous icy caves',900,100,null,0);
INSERT INTO main_quest VALUES(counter_main_qst.NEXTVAL,5102,5305,6005,'Winter’s Grasp','Stop a rogue Ice Mage freezing an entire settlement',600,100,null,0);
INSERT INTO main_quest VALUES(counter_main_qst.NEXTVAL,5102,5305,6006,'Spirit of the Tundra','Commune with an ancient frost spirit to learn its secrets.',70,100,null,0);
INSERT INTO main_quest VALUES(counter_main_qst.NEXTVAL,5102,5305,6007,'The Frozen Horde','Defeat a wave of undead soldiers emerging from the permafrost',1000,100,null,0);
INSERT INTO main_quest VALUES(counter_main_qst.NEXTVAL,5102,5305,6008,'The Frostbound Raider','Track and stop a rogue hunter stealing enchanted pelts',900,100,null,0);
INSERT INTO main_quest VALUES(counter_main_qst.NEXTVAL,5102,5305,6005,'Beneath the Ice','Uncover a hidden civilization buried beneath a glacier.',666,200,null,0);
INSERT INTO main_quest VALUES(counter_main_qst.NEXTVAL,5102,5305,6004,'Winds of Winter:','Retrieve an enchanted horn that controls the freezing winds of Frostmire',888,300,null,0);
INSERT INTO main_quest VALUES(counter_main_qst.NEXTVAL,5103,5301,6001,'The Fae Request','Deliver a message for the forest fae without angering the forest spirits.',500,500,null,0);
INSERT INTO main_quest VALUES(counter_main_qst.NEXTVAL,5103,5301,6002,'The Corrupted Grove','Purge corruption spreading through a sacred druidic grove.',600,600,null,0);
INSERT INTO main_quest VALUES(counter_main_qst.NEXTVAL,5103,5301,6003,'Whispers in the Leaves:','Follow mysterious voices to uncover a hidden fae sanctuary.',700,700,null,0);
INSERT INTO main_quest VALUES(counter_main_qst.NEXTVAL,5103,5301,6004,'Shadowed Beast',' Hunt a monstrous creature threatening the balance of the forest.',900,800,null,0);
INSERT INTO main_quest VALUES(counter_main_qst.NEXTVAL,5103,5301,6005,'The Grovekeeper Oath','Prove your worth by completing trials set by the Grovekeepers.',200,500,null,0);
INSERT INTO main_quest VALUES(counter_main_qst.NEXTVAL,5103,5301,6006,'Roots of Evil','Destroy an ancient evil awakening deep within the forest roots',1000,1000,null,0);
INSERT INTO main_quest VALUES(counter_main_qst.NEXTVAL,5103,5301,6007,'The Enchanted Bloom:',' Retrieve a rare magical flower protected by deadly flora and fauna',500,500,null,0);
INSERT INTO main_quest VALUES(counter_main_qst.NEXTVAL,5103,5301,6008,'The Elder Tree',' Defend an ancient, sentient tree from lumber raiders',500,400,null,0);
INSERT INTO main_quest VALUES(counter_main_qst.NEXTVAL,5103,5301,6009,'The Verdant Guardian','Aid a forest guardian in sealing a rift leaking shadowy creatures.',200,500,null,0);
INSERT INTO main_quest VALUES(counter_main_qst.NEXTVAL,5103,5301,6001,'Moonlit Ritual','Safely oversee a druidic moonlight ritual threatened by intruders',500,500,null,0);
INSERT INTO main_quest VALUES(counter_main_qst.NEXTVAL,5103,5301,6002,'Fae Trickery',' Resolve a conflict between villagers and mischievous fae pranksters.',600,800,null,0);
INSERT INTO main_quest VALUES(counter_main_qst.NEXTVAL,5103,5301,6001,'Spore Crisis:','Eliminate dangerous spores spreading from a corrupted mushroom grove',300,400,null,0);
INSERT INTO main_quest VALUES(counter_main_qst.NEXTVAL,5103,5301,6003,'The Hollow Heart','Retrieve a magical gem hidden in the heart of a living tree.',500,500,null,0);
INSERT INTO main_quest VALUES(counter_main_qst.NEXTVAL,5103,5301,6003,'Entangled',' Rescue a trapped traveler ensnared by enchanted vines.',500,500,null,0);
INSERT INTO main_quest VALUES(counter_main_qst.NEXTVAL,5103,5301,6004,'The Forest Shrouded','Navigate a mysterious, ever-shifting section of the woods.',500,500,null,0);
INSERT INTO main_quest VALUES(counter_main_qst.NEXTVAL,5103,5301,6005,'Call of the Wild','Commune with an ancient forest spirit to gain its blessing',1000,2000,null,0);
INSERT INTO main_quest VALUES(counter_main_qst.NEXTVAL,5103,5301,6006,'The Nightshade Plot',' Prevent an alchemist from using deadly nightshade to poison a village.',500,1000,null,0);
INSERT INTO main_quest VALUES(counter_main_qst.NEXTVAL,5103,5301,6007,'Twilight Ambush','Defeat shadow creatures that emerge only at dusk.',2000,2000,null,0);
INSERT INTO main_quest VALUES(counter_main_qst.NEXTVAL,5103,5301,6001,'Feral Awakening','Calm a pack of feral beasts driven mad by unnatural forces.',1000,1000,null,0);
INSERT INTO main_quest VALUES(counter_main_qst.NEXTVAL,5103,5301,6001,'The Verdant Labyrinth','Explore and escape a maze of living trees that changes its layout.',1000,1000,null,0);

/*merchants*/
INSERT INTO guild_merchant VALUES(counter_merchant.NEXTVAL,'Brynleaf Willowroot',5301);
INSERT INTO guild_merchant VALUES(counter_merchant.NEXTVAL,'Durn Hammerfall',5302);
INSERT INTO guild_merchant VALUES(counter_merchant.NEXTVAL,'Kaelen Icebinder',5303);
INSERT INTO guild_merchant VALUES(counter_merchant.NEXTVAL,'Rurik Flamestrike',5304);
INSERT INTO guild_merchant VALUES(counter_merchant.NEXTVAL,'Durn Selka Snowpelt',5305);



/*side quests*/
INSERT INTO side_quest VALUES(counter_side_qst.NEXTVAL,5101,27002,6001,'SQ_The Molten Trail','Escort a caravan of Emberforge blacksmiths across a lava river.',100,100,null,0);
INSERT INTO side_quest VALUES(counter_side_qst.NEXTVAL,5101,27002,6002,'SQ_Cinders of the Past','Recover a lost fire relic from an ancient, ash-choked temple.',500,500,null,0);
INSERT INTO side_quest VALUES(counter_side_qst.NEXTVAL,5101,27002,6003,'SQ_Emberwolf Hunt','Track and slay a pack of ember wolves terrorizing a nearby camp.',150,200,null,0);
INSERT INTO side_quest VALUES(counter_side_qst.NEXTVAL,5101,27002,6004,'SQ_Infernal Heart','Capture a Fire Elemental to power the forges of a blacksmith guild.',200,300,null,0);
INSERT INTO side_quest VALUES(counter_side_qst.NEXTVAL,5101,27002,6005,'SQ_The Ashen Caravan','Rescue traders trapped in a volcanic eruption.',250,250,null,0);
INSERT INTO side_quest VALUES(counter_side_qst.NEXTVAL,5101,27002,6006,'SQ_Shattered Spire','Investigate the sudden collapse of a basalt spire and the creatures it released.',250,300,null,0);
INSERT INTO side_quest VALUES(counter_side_qst.NEXTVAL,5101,27002,6007,'SQ_Crimson Contract','Stop a mercenary group, the Cinderblades, from raiding a forge.',170,200,null,0);
INSERT INTO side_quest VALUES(counter_side_qst.NEXTVAL,5101,27002,6008,'SQ_Smoke and Mirrors','Dispel a magical smoke barrier surrounding a ruined fire temple.',460,600,null,0);
INSERT INTO side_quest VALUES(counter_side_qst.NEXTVAL,5101,27002,6009,'SQ_Molten Ambush','Lay a trap to defeat raiders hiding in lava caverns.',800,700,null,0);
INSERT INTO side_quest VALUES(counter_side_qst.NEXTVAL,5101,27002,6001,'SQ_Rekindling the Flame','Reignite an ancient forge rumored to craft legendary weapons.',1000,1000,null,0);
INSERT INTO side_quest VALUES(counter_side_qst.NEXTVAL,5101,27004,6002,'SQ_Veins of Fire','Seal off a lava fissure threatening to destroy a nearby village.',200,300,null,0);
INSERT INTO side_quest VALUES(counter_side_qst.NEXTVAL,5101,27004,6003,'SQ_The Ash Revenant','Banish the fiery spirit of an ancient warlord haunting the region.',1000,1000,null,0);
INSERT INTO side_quest VALUES(counter_side_qst.NEXTVAL,5101,27004,6002,'SQ_The Inferno Core','Retrieve a molten gem from deep within an unstable volcano.',400,700,null,0);
INSERT INTO side_quest VALUES(counter_side_qst.NEXTVAL,5101,27004,6003,'SQ_Trail of Ashes','Follow the path of a mysterious figure leaving scorched earth in their wake.',400,600,null,0);
INSERT INTO side_quest VALUES(counter_side_qst.NEXTVAL,5101,27004,6002,'SQ_The Soot Thieves','Stop bandits stealing rare volcanic minerals for illicit trade.',200,300,null,0);
INSERT INTO side_quest VALUES(counter_side_qst.NEXTVAL,5101,27004,6003,'SQ_Forged in Flame','Test your strength in the Emberforge Syndicate’s brutal arena trials.',2000,2000,null,0);
INSERT INTO side_quest VALUES(counter_side_qst.NEXTVAL,5101,27004,6002,'SQ_The Lava Leviathan','Defeat a monstrous beast emerging from the molten depths.',1000,1000,null,0);
INSERT INTO side_quest VALUES(counter_side_qst.NEXTVAL,5101,27004,6003,'SQ_Burning Secrets','Decode cryptic carvings found in a buried ash temple.',1000,1000,null,0);
INSERT INTO side_quest VALUES(counter_side_qst.NEXTVAL,5101,27004,6001,'SQ_Cinderstorm','Survive and escape an unnatural storm of fiery ash.',400,400,null,0);
INSERT INTO side_quest VALUES(counter_side_qst.NEXTVAL,5101,27004,6004,'SQ_Emberforged Warband','Defend a town against a rampaging mercenary guild armed with fire-forged weapons.',1000,1000,null,0);
INSERT INTO side_quest VALUES(counter_side_qst.NEXTVAL,5102,27003,6001,'SQ_Blizzard Rescue','Locate a lost hunting party stranded in a deadly blizzard.',300,500,null,0);
INSERT INTO side_quest VALUES(counter_side_qst.NEXTVAL,5102,27003,6002,'SQ_The Frozen Titan','Defeat a frost giant guarding a sacred glacier.',1000,1000,null,0);
INSERT INTO side_quest VALUES(counter_side_qst.NEXTVAL,5102,27003,6003,'SQ_Wraiths of the Ice','Cleanse an ancient tomb of ice wraiths haunting its halls.',1000,1000,null,0);
INSERT INTO side_quest VALUES(counter_side_qst.NEXTVAL,5102,27003,6004,'SQ_Frost Wolf Pact','Tame a frost wolf to gain the trust of the Frostbound Hunters.',1000,1000,null,0);
INSERT INTO side_quest VALUES(counter_side_qst.NEXTVAL,5102,27003,6005,'SQ_The Glacial Relic','Retrieve a magical artifact frozen within an ancient glacier.',1000,1000,null,0);
INSERT INTO side_quest VALUES(counter_side_qst.NEXTVAL,5102,27003,6006,'SQ_Tracks in the Snow','Hunt a monstrous yeti terrorizing nearby villages.',1000,1000,null,0);
INSERT INTO side_quest VALUES(counter_side_qst.NEXTVAL,5102,27003,6008,'SQ_The Frostbound Trial','Complete survival challenges set by the Glacial Wardens.',1000,1000,null,0);
INSERT INTO side_quest VALUES(counter_side_qst.NEXTVAL,5102,27003,6008,'SQ_Breaking the Ice','Escort a merchant caravan across a fragile frozen lake.',1000,1000,null,0);
INSERT INTO side_quest VALUES(counter_side_qst.NEXTVAL,5102,27003,6009,'SQ_Frozen Whispers','Investigate mysterious whispers leading travelers astray in a snowstorm.',1000,1000,null,0);
INSERT INTO side_quest VALUES(counter_side_qst.NEXTVAL,5102,27003,6004,'SQ_Avalanche Warning','Rescue villagers trapped under the aftermath of a massive avalanche.',1000,1000,null,0);
INSERT INTO side_quest VALUES(counter_side_qst.NEXTVAL,5102,27005,6001,'SQ_The Shattered Glacier','Explore a newly-formed ice cavern after a glacier collapses.',1000,100,null,0);
INSERT INTO side_quest VALUES(counter_side_qst.NEXTVAL,5102,27005,6002,'SQ_Glacial Beacon','Restore an ancient magical beacon to guide lost travelers through the tundra.',300,100,null,0);
INSERT INTO side_quest VALUES(counter_side_qst.NEXTVAL,5102,27005,6003,'SQ_Frostbite Siege','Defend a village against marauders during an extreme cold front.',400,100,null,0);
INSERT INTO side_quest VALUES(counter_side_qst.NEXTVAL,5102,27005,6004,'SQ_Crystals of Icefall','Retrieve rare frost crystals from dangerous icy caves.',900,100,null,0);
INSERT INTO side_quest VALUES(counter_side_qst.NEXTVAL,5102,27005,6005,'SQ_Winter’s Grasp','Stop a rogue Ice Mage freezing an entire settlement.',600,100,null,0);
INSERT INTO side_quest VALUES(counter_side_qst.NEXTVAL,5102,27005,6006,'SQ_Spirit of the Tundra','Commune with an ancient frost spirit to learn its secrets.',70,100,null,0);
INSERT INTO side_quest VALUES(counter_side_qst.NEXTVAL,5102,27005,6007,'SQ_The Frozen Horde','Defeat a wave of undead soldiers emerging from the permafrost.',1000,100,null,0);
INSERT INTO side_quest VALUES(counter_side_qst.NEXTVAL,5102,27005,6008,'SQ_The Frostbound Raider','Track and stop a rogue hunter stealing enchanted pelts.',900,100,null,0);
INSERT INTO side_quest VALUES(counter_side_qst.NEXTVAL,5102,27005,6005,'SQ_Beneath the Ice','Uncover a hidden civilization buried beneath a glacier.',666,200,null,0);
INSERT INTO side_quest VALUES(counter_side_qst.NEXTVAL,5102,27005,6004,'SQ_Winds of Winter','Retrieve an enchanted horn that controls the freezing winds of Frostmire.',888,300,null,0);
INSERT INTO side_quest VALUES(counter_side_qst.NEXTVAL,5103,27001,6001,'SQ_The Fae Request','Deliver a message for the forest fae without angering the forest spirits.',500,500,null,0);
INSERT INTO side_quest VALUES(counter_side_qst.NEXTVAL,5103,27001,6002,'SQ_The Corrupted Grove','Purge corruption spreading through a sacred druidic grove.',600,600,null,0);
INSERT INTO side_quest VALUES(counter_side_qst.NEXTVAL,5103,27001,6003,'SQ_Whispers in the Leaves','Follow mysterious voices to uncover a hidden fae sanctuary.',700,700,null,0);
INSERT INTO side_quest VALUES(counter_side_qst.NEXTVAL,5103,27001,6004,'SQ_Shadowed Beast','Hunt a monstrous creature threatening the balance of the forest.',900,800,null,0);
INSERT INTO side_quest VALUES(counter_side_qst.NEXTVAL,5103,27001,6005,'SQ_The Grovekeeper Oath','Prove your worth by completing trials set by the Grovekeepers.',200,500,null,0);
INSERT INTO side_quest VALUES(counter_side_qst.NEXTVAL,5103,27001,6006,'SQ_Roots of Evil','Destroy an ancient evil awakening deep within the forest roots.',1000,1000,null,0);
INSERT INTO side_quest VALUES(counter_side_qst.NEXTVAL,5103,27001,6007,'SQ_The Enchanted Bloom','Retrieve a rare magical flower protected by deadly flora and fauna.',500,500,null,0);
INSERT INTO side_quest VALUES(counter_side_qst.NEXTVAL,5103,27001,6008,'SQ_The Elder Tree','Defend an ancient, sentient tree from lumber raiders.',500,400,null,0);
INSERT INTO side_quest VALUES(counter_side_qst.NEXTVAL,5103,27001,6009,'SQ_The Verdant Guardian','Aid a forest guardian in sealing a rift leaking shadowy creatures.',200,500,null,0);
INSERT INTO side_quest VALUES(counter_side_qst.NEXTVAL,5103,27001,6001,'SQ_Moonlit Ritual','Safely oversee a druidic moonlight ritual threatened by intruders.',500,500,null,0);
INSERT INTO side_quest VALUES(counter_side_qst.NEXTVAL,5103,27001,6002,'SQ_Fae Trickery','Resolve a conflict between villagers and mischievous fae pranksters.',600,800,null,0);
INSERT INTO side_quest VALUES(counter_side_qst.NEXTVAL,5103,27001,6001,'SQ_Spore Crisis','Eliminate dangerous spores spreading from a corrupted mushroom grove.',300,400,null,0);
INSERT INTO side_quest VALUES(counter_side_qst.NEXTVAL,5103,27001,6003,'SQ_The Hollow Heart','Retrieve a magical gem hidden in the heart of a living tree.',500,500,null,0);
INSERT INTO side_quest VALUES(counter_side_qst.NEXTVAL,5103,27001,6003,'SQ_Entangled','Rescue a trapped traveler ensnared by enchanted vines.',500,500,null,0);
INSERT INTO side_quest VALUES(counter_side_qst.NEXTVAL,5103,27001,6004,'SQ_The Forest Shrouded','Navigate a mysterious, ever-shifting section of the woods.',500,500,null,0);
INSERT INTO side_quest VALUES(counter_side_qst.NEXTVAL,5103,27001,6005,'SQ_Call of the Wild','Commune with an ancient forest spirit to gain its blessing.',1000,2000,null,0);
INSERT INTO side_quest VALUES(counter_side_qst.NEXTVAL,5103,27001,6006,'SQ_The Nightshade Plot','Prevent an alchemist from using deadly nightshade to poison a village.',500,1000,null,0);
INSERT INTO side_quest VALUES(counter_side_qst.NEXTVAL,5103,27001,6007,'SQ_Twilight Ambush','Defeat shadow creatures that emerge only at dusk.',2000,2000,null,0);
INSERT INTO side_quest VALUES(counter_side_qst.NEXTVAL,5103,27001,6001,'SQ_Feral Awakening','Calm a pack of feral beasts driven mad by unnatural forces.',1000,1000,null,0);
INSERT INTO side_quest VALUES(counter_side_qst.NEXTVAL,5103,27001,6001,'SQ_The Verdant Labyrinth','Explore and escape a maze of living trees that changes its layout.',1000,1000,null,0);


/*items*/
insert into item VALUES(counter_item.NEXTVAL,100,27001,5001,'item_0','description_0',1,0);
--Warrior (id_class = 5001)
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27001, 5001, 'Thornblade Longsword', 'A blade laced with thorns, causing bleeding wounds.', 6500, 0);
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27001, 5001, 'Wildguard Axe', 'A balanced axe that grows stronger in forests.', 7500, 0);
-- Mage (id_class = 5002)
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27001, 5002, 'Verdant Spellroot Staff', 'A staff that boosts nature-based spells.', 8000, 0);
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27001, 5002, 'Bloomcaller Wand', 'A wand that summons blooming vines to bind foes.', 5800, 0);
-- Tank (id_class = 5003)
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27001, 5003, 'Barkskin Bracers', 'Bracers that increase armor and resistance.', 7200, 0);
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27001, 5003, 'Elderwood Shield', 'A sturdy shield made from enchanted oak.', 9500, 0);
-- Ranger (id_class = 5004)
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27001, 5004, 'Sylvan Arrow Quiver', 'A quiver of arrows that grow sharp thorns on hit.', 5500, 0);
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27001, 5004, 'Rootbound Bow', 'A bow that entangles targets with roots on impact.', 6800, 0);
-- Craftman (id_class = 5005)
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27001, 5005, 'Artisan’s Leaf Chisel', 'A tool that carves wood with precision and speed.', 4800, 0);
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27001, 5005, 'Greenwood Carver', 'A knife designed for detailed woodcraft.', 5200, 0);
-- Healer (id_class = 5006)
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27001, 5006, 'Lifebloom Amulet', 'Slowly restores health to the wearer over time.', 9000, 0);
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27001, 5006, 'Dewdrop Flask', 'A flask that heals allies with restorative water.', 6000, 0);
-- Public_Speaker (id_class = 5007)
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27001, 5007, 'Voice of the Grove Tome', 'Enhances persuasion when speaking to forest beings.', 10000, 0);
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27001, 5007, 'Sylvan Ring of Clarity', 'Increases charisma and speech clarity.', 8500, 0);
-- Warrior (id_class = 5001)
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27002, 5001, 'Embersteel Warblade', 'A heavy sword that glows hot and burns foes.', 7500, 0);
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27002, 5001, 'Molten Cleaver', 'A fiery cleaver that sears through armor.', 6800, 0);
-- Mage (id_class = 5002)
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27002, 5002, 'Flamecaller’s Rod', 'A rod that enhances fire-based spells.', 8500, 0);
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27002, 5002, 'Infernal Grimoire', 'A spellbook containing ancient fire magic.', 9000, 0);
-- Tank (id_class = 5003)
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27002, 5003, 'Moltenplate Armor', 'Heavy fire-resistant armor for unmatched defense.', 9800, 0);
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27002, 5003, 'Cindersteel Helm', 'A helm that reduces fire damage taken.', 6200, 0);
-- Ranger (id_class = 5004)
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27002, 5004, 'Fire-Forged Arrows', 'Arrows that ignite on impact, dealing fire damage.', 5200, 0);
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27002, 5004, 'Emberlong Bow', 'A bow that launches flaming arrows.', 8000, 0);
-- Craftman (id_class = 5005)
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27002, 5005, 'Smelter’s Forgehammer', 'A hammer that boosts blacksmith crafting speed.', 3000, 0);
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27002, 5005, 'Ember Tongs', 'Tongs that safely manipulate molten metal.', 4500, 0);
-- Healer (id_class = 5006)
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27002, 5006, 'Emberlight Relic', 'Restores minor health while reducing fire damage.', 6200, 0);
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27002, 5006, 'Warmthstone Amulet', 'Provides warmth and minor healing in cold regions.', 7500, 0);
-- Public_Speaker (id_class = 5007)
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27002, 5007, 'Banner of the Syndicate', 'Boosts morale and inspires nearby allies.', 9000, 0);
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27002, 5007, 'Ring of Ember Speech', 'Amplifies the user’s voice with a fiery resonance.', 7000, 0);
-- Warrior (id_class = 5001)
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27003, 5001, 'Frostfang Greatsword', 'A massive blade that freezes enemies on hit.', 7000, 0);
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27003, 5001, 'Icecrush Hammer', 'A hammer that shatters armor with chilling force.', 8500, 0);
-- Mage (id_class = 5002)
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27003, 5002, 'Staff of Endless Winter', 'Boosts ice spells and creates minor blizzards.', 8200, 0);
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27003, 5002, 'Snowcaller Orb', 'A magical orb that conjures frost-based attacks.', 6800, 0);
-- Tank (id_class = 5003)
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27003, 5003, 'Icewarden Shield', 'A shield that absorbs frost damage and counters.', 9500, 0);
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27003, 5003, 'Glacierplate Armor', 'Frost-resistant armor for maximum defense.', 10000, 0);
-- Ranger (id_class = 5004)
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27003, 5004, 'Frostshot Quiver', 'Frost-tipped arrows that slow targets.', 6800, 0);
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27003, 5004, 'Winterstalker Bow', 'A bow that tracks heat signatures in the snow.', 7200, 0);
-- Craftman (id_class = 5005)
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27003, 5005, 'Frostbite Pickaxe', 'A pickaxe that breaks through ice and frozen ore.', 4500, 0);
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27003, 5005, 'Chisel of Icecarving', 'A chisel designed for crafting with ice.', 5000, 0);
-- Healer (id_class = 5006)
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27003, 5006, 'Glacial Healing Stone', 'A stone that channels cold energy to heal wounds.', 7300, 0);
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27003, 5006, 'Frostbloom Potion', 'A potion that cures frostbite and restores health.', 6200, 0);
-- Public_Speaker (id_class = 5007)
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27003, 5007, 'Whisper of the Blizzard', 'Amplifies the user’s voice over large distances.', 8500, 0);
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27003, 5007, 'Frozen Call Horn', 'A horn that carries sound through icy storms.', 9000, 0);
-- Warrior (id_class = 5001)
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27004, 5001, 'Infernal Greataxe', 'A massive axe with a fiery edge that sears foes.', 7000, 0);
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27004, 5001, 'Pyrestone Saber', 'A saber that heats up on repeated strikes.', 6800, 0);
-- Mage (id_class = 5002)
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27004, 5002, 'Magmaheart Staff', 'Enhances fire magic and erupts flames in combat.', 9000, 0);
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27004, 5002, 'Lavaflow Orb', 'Channels molten energy into ranged spells.', 7500, 0);
-- Tank (id_class = 5003)
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27004, 5003, 'Volcanic Bulwark', 'A massive shield that withstands explosions.', 9800, 0);
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27004, 5003, 'Emberforged Pauldrons', 'Shoulders that deflect fire damage.', 7000, 0);
-- Ranger (id_class = 5004)
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27004, 5004, 'Lavaforged Bow', 'Fires molten arrows that explode on impact.', 6500, 0);
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27004, 5004, 'Flamehunter Arrows', 'Arrows that seek heat and deal fire damage.', 5800, 0);
-- Craftman (id_class = 5005)
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27004, 5005, 'Emberforge Tools', 'Tools that improve smithing precision and speed.', 4000, 0);
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27004, 5005, 'Heatshard Tongs', 'Fire-resistant tongs for crafting molten items.', 5200, 0);
-- Healer (id_class = 5006)
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27004, 5006, 'Firebound Band', 'A ring that heals burns and fire-related wounds.', 6200, 0);
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27004, 5006, 'Warmthkeeper Flask', 'A potion that restores warmth and health.', 5500, 0);
-- Public_Speaker (id_class = 5007)
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27004, 5007, 'Pyrespeaker’s Horn', 'Projects the user’s voice loudly and powerfully.', 7500, 0);
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27004, 5007, 'Banner of the Flame', 'Inspires allies and increases morale.', 8000, 0);
-- Warrior (id_class = 5001)
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27005, 5001, 'Beastslayer Axe', 'A sharp axe designed for slaying tundra beasts.', 6000, 0);
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27005, 5001, 'Snowcleaver Blade', 'A sword that deals bonus damage to icy foes.', 7200, 0);
-- Mage (id_class = 5002)
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27005, 5002, 'Frostcaller’s Charm', 'A charm that enhances frost magic spells.', 7000, 0);
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27005, 5002, 'Winterborn Amulet', 'Boosts ice magic and resists cold damage.', 6800, 0);
-- Tank (id_class = 5003)
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27005, 5003, 'Icebear Hide Cloak', 'A thick cloak that absorbs cold damage.', 7800, 0);
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27005, 5003, 'Frostbound Helm', 'A helm that shields the wearer from cold magic.', 8000, 0);
-- Ranger (id_class = 5004)
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27005, 5004, 'Wolfstalker Bow', 'A bow designed for silent hunting and precision.', 5500, 0);
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27005, 5004, 'Icestrike Arrows', 'Arrows that deal cold damage and slow targets.', 6000, 0);
-- Craftman (id_class = 5005)
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27005, 5005, 'Tracker’s Engraving Tool', 'A tool for crafting and marking leather goods.', 3500, 0);
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27005, 5005, 'Iceweaver’s Kit', 'A kit that helps craft ice-resistant gear.', 4200, 0);
-- Healer (id_class = 5006)
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27005, 5006, 'Arctic Remedy Flask', 'A flask that cures frostbite and cold ailments.', 4200, 0);
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27005, 5006, 'Snowbloom Elixir', 'A healing potion made from rare tundra flowers.', 5800, 0);
-- Public_Speaker (id_class = 5007)
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27005, 5007, 'Howler’s Horn', 'A horn that calls allies or scares off predators.', 6500, 0);
INSERT INTO item VALUES(counter_item.NEXTVAL, 100, 27005, 5007, 'Tundra Voice Pendant', 'Amplifies the user’s voice during harsh winds.', 7500, 0);

/*inventory*/
insert into inventory VALUES(counter_inventory.NEXTVAL,30001,30001,30001,30001);
insert into inventory VALUES(counter_inventory.NEXTVAL,30001,30001,30001,30001);
insert into inventory VALUES(counter_inventory.NEXTVAL,30001,30001,30001,30001);
insert into inventory VALUES(counter_inventory.NEXTVAL,30001,30001,30001,30001);
insert into inventory VALUES(counter_inventory.NEXTVAL,30001,30001,30001,30001);
insert into inventory VALUES(counter_inventory.NEXTVAL,30001,30001,30001,30001);
insert into inventory VALUES(counter_inventory.NEXTVAL,30001,30001,30001,30001);
insert into inventory VALUES(counter_inventory.NEXTVAL,30001,30001,30001,30001);
insert into inventory VALUES(counter_inventory.NEXTVAL,30001,30001,30001,30001);
insert into inventory VALUES(counter_inventory.NEXTVAL,30001,30001,30001,30001);
insert into inventory VALUES(counter_inventory.NEXTVAL,30001,30001,30001,30001);
insert into inventory VALUES(counter_inventory.NEXTVAL,30001,30001,30001,30001);
insert into inventory VALUES(counter_inventory.NEXTVAL,30001,30001,30001,30001);
insert into inventory VALUES(counter_inventory.NEXTVAL,30001,30001,30001,30001);
insert into inventory VALUES(counter_inventory.NEXTVAL,30001,30001,30001,30001);
insert into inventory VALUES(counter_inventory.NEXTVAL,30001,30001,30001,30001);
insert into inventory VALUES(counter_inventory.NEXTVAL,30001,30001,30001,30001);
insert into inventory VALUES(counter_inventory.NEXTVAL,30001,30001,30001,30001);
insert into inventory VALUES(counter_inventory.NEXTVAL,30001,30001,30001,30001);
insert into inventory VALUES(counter_inventory.NEXTVAL,30001,30001,30001,30001);
insert into inventory VALUES(counter_inventory.NEXTVAL,30001,30001,30001,30001);
insert into inventory VALUES(counter_inventory.NEXTVAL,30001,30001,30001,30001);
insert into inventory VALUES(counter_inventory.NEXTVAL,30001,30001,30001,30001);
insert into inventory VALUES(counter_inventory.NEXTVAL,30001,30001,30001,30001);
insert into inventory VALUES(counter_inventory.NEXTVAL,30001,30001,30001,30001);
insert into inventory VALUES(counter_inventory.NEXTVAL,30001,30001,30001,30001);
insert into inventory VALUES(counter_inventory.NEXTVAL,30001,30001,30001,30001);
insert into inventory VALUES(counter_inventory.NEXTVAL,30001,30001,30001,30001);
insert into inventory VALUES(counter_inventory.NEXTVAL,30001,30001,30001,30001);
insert into inventory VALUES(counter_inventory.NEXTVAL,30001,30001,30001,30001);
insert into inventory VALUES(counter_inventory.NEXTVAL,30001,30001,30001,30001);
insert into inventory VALUES(counter_inventory.NEXTVAL,30001,30001,30001,30001);
insert into inventory VALUES(counter_inventory.NEXTVAL,30001,30001,30001,30001);
insert into inventory VALUES(counter_inventory.NEXTVAL,30001,30001,30001,30001);
insert into inventory VALUES(counter_inventory.NEXTVAL,30001,30001,30001,30001);
insert into inventory VALUES(counter_inventory.NEXTVAL,30001,30001,30001,30001);

/*caracters*/

INSERT INTO caracter VALUES(counter_caracter.NEXTVAL,'THECHOSENONE',6001,11031,5001);
-- Party 6001 (7 Players)
INSERT INTO caracter VALUES(counter_caracter.NEXTVAL, 'Thalric Ironfist27', 6001, 11032, 5001);
INSERT INTO caracter VALUES(counter_caracter.NEXTVAL, 'Eldrin Starcaller07', 6001, 11033, 5002);
INSERT INTO caracter VALUES(counter_caracter.NEXTVAL, 'Rurik Stoneguard99', 6001, 11034, 5003);
INSERT INTO caracter VALUES(counter_caracter.NEXTVAL, 'Sylwen Thornshadow60', 6001, 11035, 5004);
INSERT INTO caracter VALUES(counter_caracter.NEXTVAL, 'Garrik Ironforge04', 6001, 11036, 5005);
INSERT INTO caracter VALUES(counter_caracter.NEXTVAL, 'Lira Mossheart45', 6001, 11037, 5006);
INSERT INTO caracter VALUES(counter_caracter.NEXTVAL, 'Arion Spellweaver03', 6001, 11038, 5007);
-- Party 6002 (2 Players)
INSERT INTO caracter VALUES(counter_caracter.NEXTVAL, 'Brynn Stonecleaver15', 6002, 11039, 5001);
INSERT INTO caracter VALUES(counter_caracter.NEXTVAL, 'Selina Frostwhisper12', 6002, 11040, 5002);
-- Party 6003 (2 Players)
INSERT INTO caracter VALUES(counter_caracter.NEXTVAL, 'Ulric Flamebinder42', 6003, 11041, 5001);
INSERT INTO caracter VALUES(counter_caracter.NEXTVAL, 'Ashryn Swiftquiver17', 6003, 11042, 5006);
-- Party 6004 (3 Players)
INSERT INTO caracter VALUES(counter_caracter.NEXTVAL, 'Kaelen Icehelm25', 6004, 11043, 5003);
INSERT INTO caracter VALUES(counter_caracter.NEXTVAL, 'Thyra Mistarrow84', 6004, 11044, 5004);
INSERT INTO caracter VALUES(counter_caracter.NEXTVAL, 'Dulric Stonewright73', 6004, 11045, 5005);
-- Party 6005 (3 Players)
INSERT INTO caracter VALUES(counter_caracter.NEXTVAL, 'Torgath Ironskin72', 6005, 11046, 5003);
INSERT INTO caracter VALUES(counter_caracter.NEXTVAL, 'Zeraphine Nightveil78', 6005, 11047, 5006);
INSERT INTO caracter VALUES(counter_caracter.NEXTVAL, 'Grundar Forgewall82', 6005, 11048, 5007);
-- Party 6006 (4 Players)
INSERT INTO caracter VALUES(counter_caracter.NEXTVAL, 'Serka Bloodedge81', 6006, 11049, 5001);
INSERT INTO caracter VALUES(counter_caracter.NEXTVAL, 'Kaelis Emberflame66', 6006, 11050, 5002);
INSERT INTO caracter VALUES(counter_caracter.NEXTVAL, 'Ravenna Windstalker31', 6006, 11051, 5004);
INSERT INTO caracter VALUES(counter_caracter.NEXTVAL, 'Selric Tinkerblade09', 6006, 11052, 5005);
-- Party 6007 (4 Players)
INSERT INTO caracter VALUES(counter_caracter.NEXTVAL, 'Brynor Earthshaker88', 6007, 11053, 5003);
INSERT INTO caracter VALUES(counter_caracter.NEXTVAL, 'Vyrantha Frostbinder59', 6007, 11054, 5002);
INSERT INTO caracter VALUES(counter_caracter.NEXTVAL, 'Branna Copperhand22', 6007, 11055, 5005);
INSERT INTO caracter VALUES(counter_caracter.NEXTVAL, 'Fenric Longbow62', 6007, 11056, 5006);
-- Party 6008 (5 Players)
INSERT INTO caracter VALUES(counter_caracter.NEXTVAL, 'Helmara Shieldheart53', 6008, 11057, 5003);
INSERT INTO caracter VALUES(counter_caracter.NEXTVAL, 'Lyara Moondreamer34', 6008, 11058, 5002);
INSERT INTO caracter VALUES(counter_caracter.NEXTVAL, 'Kaelis Wildstrider47', 6008, 11059, 5004);
INSERT INTO caracter VALUES(counter_caracter.NEXTVAL, 'Rurik Emberwright95', 6008, 11060, 5005);
INSERT INTO caracter VALUES(counter_caracter.NEXTVAL, 'Elowen Lightbloom26', 6008, 11061, 5006);
-- Party 6009 (5 Players)
INSERT INTO caracter VALUES(counter_caracter.NEXTVAL, 'Garron Blackblade93', 6009, 11062, 5001);
INSERT INTO caracter VALUES(counter_caracter.NEXTVAL, 'Snowcleaver Blade72', 6009, 11063, 5004);
INSERT INTO caracter VALUES(counter_caracter.NEXTVAL, 'Rurik Emberwright95', 6009, 11064, 5005);
INSERT INTO caracter VALUES(counter_caracter.NEXTVAL, 'Firebound Band42', 6009, 11065, 5006);
INSERT INTO caracter VALUES(counter_caracter.NEXTVAL, 'Voice of Grove Tome47', 6009, 11066, 5007);

/*relationships*/
INSERT INTO game_account_caracter VALUES(100, 151, 9001);
INSERT INTO game_account_caracter VALUES(100, 152, 9002);
INSERT INTO game_account_caracter VALUES(100, 153, 9003);
INSERT INTO game_account_caracter VALUES(100, 154, 9004);
INSERT INTO game_account_caracter VALUES(100, 155, 9005);
INSERT INTO game_account_caracter VALUES(100, 156, 9006);
INSERT INTO game_account_caracter VALUES(100, 157, 9007);
INSERT INTO game_account_caracter VALUES(100, 158, 9008);
INSERT INTO game_account_caracter VALUES(100, 159, 9009);
INSERT INTO game_account_caracter VALUES(100, 160, 9010);
INSERT INTO game_account_caracter VALUES(100, 161, 9011);
INSERT INTO game_account_caracter VALUES(100, 162, 9012);
INSERT INTO game_account_caracter VALUES(100, 163, 9013);
INSERT INTO game_account_caracter VALUES(100, 164, 9014);
INSERT INTO game_account_caracter VALUES(100, 165, 9015);
INSERT INTO game_account_caracter VALUES(100, 166, 9016);
INSERT INTO game_account_caracter VALUES(100, 167, 9017);
INSERT INTO game_account_caracter VALUES(100, 168, 9018);
INSERT INTO game_account_caracter VALUES(100, 169, 9019);
INSERT INTO game_account_caracter VALUES(100, 170, 9020);
INSERT INTO game_account_caracter VALUES(100, 171, 9021);
INSERT INTO game_account_caracter VALUES(100, 172, 9022);
INSERT INTO game_account_caracter VALUES(100, 173, 9023);
INSERT INTO game_account_caracter VALUES(100, 174, 9024);
INSERT INTO game_account_caracter VALUES(100, 175, 9025);
INSERT INTO game_account_caracter VALUES(100, 176, 9026);
INSERT INTO game_account_caracter VALUES(100, 177, 9027);
INSERT INTO game_account_caracter VALUES(100, 178, 9028);
INSERT INTO game_account_caracter VALUES(100, 179, 9029);
INSERT INTO game_account_caracter VALUES(100, 180, 9030);
INSERT INTO game_account_caracter VALUES(100, 181, 9031);
INSERT INTO game_account_caracter VALUES(100, 182, 9032);
INSERT INTO game_account_caracter VALUES(100, 183, 9033);
INSERT INTO game_account_caracter VALUES(100, 184, 9034);
INSERT INTO game_account_caracter VALUES(100, 185, 9035);
INSERT INTO game_account_caracter VALUES(100, 186, 9036);
