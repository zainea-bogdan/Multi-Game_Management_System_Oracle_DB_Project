prompt genre_inserts

insert into genre values ( counter_genre.nextval,
                           'Medieval' );
insert into genre values ( counter_genre.nextval,
                           'Cyberpunk' );
insert into genre values ( counter_genre.nextval,
                           'Steampunk' );
insert into genre values ( counter_genre.nextval,
                           'Fantasy' );
insert into genre values ( counter_genre.nextval,
                           'Sci-Fi' );
insert into genre values ( counter_genre.nextval,
                           'Post-Apocalyptic' );
insert into genre values ( counter_genre.nextval,
                           'Horror' );
insert into genre values ( counter_genre.nextval,
                           'Mythological' );
insert into genre values ( counter_genre.nextval,
                           'Western' );
insert into genre values ( counter_genre.nextval,
                           'Historical' );


prompt platform_inserts

insert into platform values ( counter_platform.nextval,
                              'PC' );
insert into platform values ( counter_platform.nextval,
                              'PS4' );
insert into platform values ( counter_platform.nextval,
                              'XBOX' );
insert into platform values ( counter_platform.nextval,
                              'NINTENDO' );
insert into platform values ( counter_platform.nextval,
                              'VR' );


prompt game_inserts
insert into game values ( counter_game.nextval,
                          'Fantasy_RPG',
                          9,
                          1 );
insert into game values ( counter_game.nextval,
                          'Cyberpunk_RPG',
                          7,
                          2 );


prompt player_account_
insert into player_account values ( counter_player.nextval,
                                    'user1',
                                    'user1@email.com',
                                    '1resu',
                                    to_date('12 december 2024','DD-MM-YYYY') );
insert into player_account values ( counter_player.nextval,
                                    'user245',
                                    'user245@email.com',
                                    '542resu',
                                    to_date('15-01-2023','DD-MM-YYYY') );
insert into player_account values ( counter_player.nextval,
                                    'user567',
                                    'user567@email.com',
                                    '765resu',
                                    to_date('10-02-2022','DD-MM-YYYY') );
insert into player_account values ( counter_player.nextval,
                                    'user893',
                                    'user893@email.com',
                                    '398resu',
                                    to_date('05-03-2021','DD-MM-YYYY') );
insert into player_account values ( counter_player.nextval,
                                    'user1024',
                                    'user1024@email.com',
                                    '4201resu',
                                    to_date('20-04-2020','DD-MM-YYYY') );
insert into player_account values ( counter_player.nextval,
                                    'user1490',
                                    'user1490@email.com',
                                    '0941resu',
                                    to_date('25-05-2019','DD-MM-YYYY') );
insert into player_account values ( counter_player.nextval,
                                    'user1625',
                                    'user1625@email.com',
                                    '5261resu',
                                    to_date('01-06-2018','DD-MM-YYYY') );
insert into player_account values ( counter_player.nextval,
                                    'user1890',
                                    'user1890@email.com',
                                    '0981resu',
                                    to_date('10-07-2017','DD-MM-YYYY') );
insert into player_account values ( counter_player.nextval,
                                    'user2056',
                                    'user2056@email.com',
                                    '6502resu',
                                    to_date('15-08-2016','DD-MM-YYYY') );
insert into player_account values ( counter_player.nextval,
                                    'user2350',
                                    'user2350@email.com',
                                    '0532resu',
                                    to_date('20-09-2015','DD-MM-YYYY') );
insert into player_account values ( counter_player.nextval,
                                    'user2789',
                                    'user2789@email.com',
                                    '9872resu',
                                    to_date('05-10-2014','DD-MM-YYYY') );
insert into player_account values ( counter_player.nextval,
                                    'user3123',
                                    'user3123@email.com',
                                    '3213resu',
                                    to_date('12-11-2013','DD-MM-YYYY') );
insert into player_account values ( counter_player.nextval,
                                    'user3412',
                                    'user3412@email.com',
                                    '2143resu',
                                    to_date('22-12-2012','DD-MM-YYYY') );
insert into player_account values ( counter_player.nextval,
                                    'user3789',
                                    'user3789@email.com',
                                    '9873resu',
                                    to_date('01-01-2011','DD-MM-YYYY') );
insert into player_account values ( counter_player.nextval,
                                    'user4120',
                                    'user4120@email.com',
                                    '0214resu',
                                    to_date('15-01-2010','DD-MM-YYYY') );
insert into player_account values ( counter_player.nextval,
                                    'user4502',
                                    'user4502@email.com',
                                    '2054resu',
                                    to_date('28-02-2019','DD-MM-YYYY') );
insert into player_account values ( counter_player.nextval,
                                    'user4890',
                                    'user4890@email.com',
                                    '0984resu',
                                    to_date('10-03-2018','DD-MM-YYYY') );
insert into player_account values ( counter_player.nextval,
                                    'user5123',
                                    'user5123@email.com',
                                    '3215resu',
                                    to_date('15-04-2017','DD-MM-YYYY') );
insert into player_account values ( counter_player.nextval,
                                    'user5400',
                                    'user5400@email.com',
                                    '0045resu',
                                    to_date('20-05-2016','DD-MM-YYYY') );
insert into player_account values ( counter_player.nextval,
                                    'user5678',
                                    'user5678@email.com',
                                    '8765resu',
                                    to_date('25-06-2015','DD-MM-YYYY') );
insert into player_account values ( counter_player.nextval,
                                    'user6000',
                                    'user6000@email.com',
                                    '0006resu',
                                    to_date('10-07-2013','DD-MM-YYYY') );
insert into player_account values ( counter_player.nextval,
                                    'user6321',
                                    'user6321@email.com',
                                    '1236resu',
                                    to_date('15-08-2014','DD-MM-YYYY') );
insert into player_account values ( counter_player.nextval,
                                    'user6789',
                                    'user6789@email.com',
                                    '9876resu',
                                    to_date('20-09-2012','DD-MM-YYYY') );
insert into player_account values ( counter_player.nextval,
                                    'user7001',
                                    'user7001@email.com',
                                    '1007resu',
                                    to_date('05-10-2011','DD-MM-YYYY') );
insert into player_account values ( counter_player.nextval,
                                    'user7500',
                                    'user7500@email.com',
                                    '0057resu',
                                    to_date('10-11-2023','DD-MM-YYYY') );
insert into player_account values ( counter_player.nextval,
                                    'user8000',
                                    'user8000@email.com',
                                    '0008resu',
                                    to_date('01-12-1999','DD-MM-YYYY') );
insert into player_account values ( counter_player.nextval,
                                    'user1508',
                                    'user1508@email.com',
                                    '8051resu',
                                    to_date('20-12-2001','DD-MM-YYYY') );
insert into player_account values ( counter_player.nextval,
                                    'user1488',
                                    'user1488@email.com',
                                    '8841resu',
                                    to_date('09-05-2016','DD-MM-YYYY') );
insert into player_account values ( counter_player.nextval,
                                    'user9034',
                                    'user9034@email.com',
                                    '4309resu',
                                    to_date('12-08-2021','DD-MM-YYYY') );
insert into player_account values ( counter_player.nextval,
                                    'user5458',
                                    'user5458@email.com',
                                    '8545resu',
                                    to_date('07-09-2020','DD-MM-YYYY') );
insert into player_account values ( counter_player.nextval,
                                    'user2534',
                                    'user2534@email.com',
                                    '4352resu',
                                    to_date('29-04-2015','DD-MM-YYYY') );
insert into player_account values ( counter_player.nextval,
                                    'user6343',
                                    'user6343@email.com',
                                    '3436resu',
                                    to_date('06-12-2007','DD-MM-YYYY') );
insert into player_account values ( counter_player.nextval,
                                    'user7309',
                                    'user7309@email.com',
                                    '9037resu',
                                    to_date('29-05-2022','DD-MM-YYYY') );
insert into player_account values ( counter_player.nextval,
                                    'user6829',
                                    'user6829@email.com',
                                    '9286resu',
                                    to_date('12-05-2021','DD-MM-YYYY') );
insert into player_account values ( counter_player.nextval,
                                    'user2915',
                                    'user2915@email.com',
                                    '5192resu',
                                    to_date('26-01-2022','DD-MM-YYYY') );
insert into player_account values ( counter_player.nextval,
                                    'user1670',
                                    'user1670@email.com',
                                    '0761resu',
                                    to_date('05-12-2021','DD-MM-YYYY') );

/*INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user8473', 'user8473@email.com', '3748resu', TO_DATE('30-11-2017', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user4208', 'user4208@email.com', '8024resu', TO_DATE('23-09-2006', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user3975', 'user3975@email.com', '5793resu', TO_DATE('13-03-2023', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user7246', 'user7246@email.com', '6427resu', TO_DATE('18-04-2024', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user8032', 'user8032@email.com', '2308resu', TO_DATE('16-01-2010', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user1694', 'user1694@email.com', '4961resu', TO_DATE('14-06-2022', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user5894', 'user5894@email.com', '4985resu', TO_DATE('11-11-2011', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user4023', 'user4023@email.com', '3204resu', TO_DATE('28-02-2008', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user2341', 'user2341@email.com', '1432resu', TO_DATE('03-09-2009', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user1746', 'user1746@email.com', '6471resu', TO_DATE('25-05-2013', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user8059', 'user8059@email.com', '9508resu', TO_DATE('17-07-2002', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user4563', 'user4563@email.com', '3654resu', TO_DATE('15-10-2020', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user6127', 'user6127@email.com', '7216resu', TO_DATE('19-06-2014', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user7642', 'user7642@email.com', '2467resu', TO_DATE('07-02-2004', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user8490', 'user8490@email.com', '0948resu', TO_DATE('21-08-2003', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user5052', 'user5052@email.com', '2505resu', TO_DATE('17-03-2008', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user7401', 'user7401@email.com', '1047resu', TO_DATE('16-02-2022', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user8664', 'user8664@email.com', '4668resu', TO_DATE('24-01-2001', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user4038', 'user4038@email.com', '8304resu', TO_DATE('27-08-2013', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user6482', 'user6482@email.com', '2846resu', TO_DATE('07-05-2016', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user7179', 'user7179@email.com', '9717resu', TO_DATE('09-09-2010', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user7326', 'user7326@email.com', '6237resu', TO_DATE('16-11-2023', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user2130', 'user2130@email.com', '0312resu', TO_DATE('19-08-2005', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user5031', 'user5031@email.com', '1305resu', TO_DATE('08-05-2021', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user8699', 'user8699@email.com', '9968resu', TO_DATE('09-11-2003', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user9113', 'user9113@email.com', '3119resu', TO_DATE('24-02-2004', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user5419', 'user5419@email.com', '9145resu', TO_DATE('28-08-2010', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user2142', 'user2142@email.com', '2412resu', TO_DATE('08-12-2001', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user5467', 'user5467@email.com', '7645resu', TO_DATE('09-05-2021', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user6807', 'user6807@email.com', '7086resu', TO_DATE('23-10-2021', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user8667', 'user8667@email.com', '7668resu', TO_DATE('29-12-2002', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user7658', 'user7658@email.com', '8567resu', TO_DATE('08-06-2002', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user8677', 'user8677@email.com', '7768resu', TO_DATE('27-04-2008', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user6256', 'user6256@email.com', '6526resu', TO_DATE('11-05-2003', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user7839', 'user7839@email.com', '9387resu', TO_DATE('16-02-2020', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user4309', 'user4309@email.com', '9034resu', TO_DATE('15-05-2005', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user9977', 'user9977@email.com', '7799resu', TO_DATE('11-08-2009', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user4973', 'user4973@email.com', '3794resu', TO_DATE('18-03-2022', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user2188', 'user2188@email.com', '8812resu', TO_DATE('21-03-2009', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user1759', 'user1759@email.com', '9571resu', TO_DATE('15-07-2010', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user9811', 'user9811@email.com', '1189resu', TO_DATE('30-01-2009', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user2361', 'user2361@email.com', '1632resu', TO_DATE('28-05-2004', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user1121', 'user1121@email.com', '1211resu', TO_DATE('09-09-2010', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user8019', 'user8019@email.com', '9108resu', TO_DATE('08-11-2000', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user4251', 'user4251@email.com', '1524resu', TO_DATE('13-05-2006', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user6849', 'user6849@email.com', '9486resu', TO_DATE('19-12-2009', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user5162', 'user5162@email.com', '2615resu', TO_DATE('25-12-2002', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user2313', 'user2313@email.com', '3132resu', TO_DATE('02-08-2004', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user1014', 'user1014@email.com', '4101resu', TO_DATE('28-01-2021', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user9422', 'user9422@email.com', '2249resu', TO_DATE('24-09-2012', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user5525', 'user5525@email.com', '5255resu', TO_DATE('02-08-2013', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user3525', 'user3525@email.com', '5253resu', TO_DATE('03-01-2014', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user8167', 'user8167@email.com', '7618resu', TO_DATE('06-11-2007', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user5562', 'user5562@email.com', '2655resu', TO_DATE('20-02-2012', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user2291', 'user2291@email.com', '1922resu', TO_DATE('27-01-2002', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user5793', 'user5793@email.com', '3975resu', TO_DATE('10-05-2001', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user1581', 'user1581@email.com', '1851resu', TO_DATE('01-08-2012', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user6344', 'user6344@email.com', '4436resu', TO_DATE('09-04-2015', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user1215', 'user1215@email.com', '5121resu', TO_DATE('22-08-2020', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user3565', 'user3565@email.com', '5653resu', TO_DATE('01-03-2012', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user5904', 'user5904@email.com', '4095resu', TO_DATE('14-10-2002', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user4624', 'user4624@email.com', '4264resu', TO_DATE('21-02-2014', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user7143', 'user7143@email.com', '3417resu', TO_DATE('20-01-2010', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user1615', 'user1615@email.com', '5161resu', TO_DATE('24-12-2014', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 100, 'user2499', 'user2499@email.com', '9942resu', TO_DATE('19-03-2004', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 101, 'user1203', 'user1203@email.com', '3021resu', TO_DATE('15-01-2023', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 101, 'user2431', 'user2431@email.com', '1342resu', TO_DATE('10-02-2022', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 101, 'user3568', 'user3568@email.com', '8653resu', TO_DATE('05-03-2021', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 101, 'user4789', 'user4789@email.com', '9874resu', TO_DATE('20-04-2020', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 101, 'user5301', 'user5301@email.com', '1035resu', TO_DATE('25-05-2019', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 101, 'user6412', 'user6412@email.com', '2146resu', TO_DATE('01-06-2018', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 101, 'user7529', 'user7529@email.com', '9257resu', TO_DATE('10-07-2017', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 101, 'user8134', 'user8134@email.com', '4318resu', TO_DATE('15-08-2016', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 101, 'user9123', 'user9123@email.com', '3219resu', TO_DATE('20-09-2015', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 101, 'user2347', 'user2347@email.com', '7432resu', TO_DATE('05-10-2014', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 101, 'user3458', 'user3458@email.com', '8543resu', TO_DATE('12-11-2013', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 101, 'user4571', 'user4571@email.com', '1754resu', TO_DATE('22-12-2012', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 101, 'user5682', 'user5682@email.com', '2865resu', TO_DATE('01-01-2011', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 101, 'user6793', 'user6793@email.com', '3976resu', TO_DATE('15-01-2010', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 101, 'user7894', 'user7894@email.com', '4987resu', TO_DATE('28-02-2009', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 101, 'user8124', 'user8124@email.com', '4218resu', TO_DATE('10-03-2008', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 101, 'user9235', 'user9235@email.com', '5329resu', TO_DATE('15-04-2007', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 101, 'user2349', 'user2349@email.com', '9432resu', TO_DATE('20-05-2006', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 101, 'user3460', 'user3460@email.com', '0643resu', TO_DATE('25-06-2005', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 101, 'user4572', 'user4572@email.com', '2754resu', TO_DATE('10-07-2004', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 101, 'user5683', 'user5683@email.com', '3865resu', TO_DATE('15-08-2003', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 101, 'user6794', 'user6794@email.com', '4976resu', TO_DATE('20-09-2002', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 101, 'user7895', 'user7895@email.com', '5987resu', TO_DATE('05-10-2001', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 101, 'user8126', 'user8126@email.com', '6218resu', TO_DATE('10-11-2000', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 101, 'user9237', 'user9237@email.com', '7329resu', TO_DATE('01-12-1999', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 101, 'user9678', 'user9678@email.com', '8769resu', TO_DATE('01-05-1996', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 101, 'user8591', 'user8591@email.com', '1958resu', TO_DATE('09-01-1997', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 101, 'user2079', 'user2079@email.com', '9702resu', TO_DATE('12-07-1994', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 101, 'user4421', 'user4421@email.com', '1244resu', TO_DATE('07-03-1996', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 101, 'user7056', 'user7056@email.com', '6507resu', TO_DATE('24-05-1991', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 101, 'user1117', 'user1117@email.com', '7111resu', TO_DATE('05-04-1998', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 101, 'user3922', 'user3922@email.com', '2293resu', TO_DATE('22-08-1996', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 101, 'user4934', 'user4934@email.com', '4394resu', TO_DATE('19-03-1999', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 101, 'user6937', 'user6937@email.com', '7396resu', TO_DATE('28-11-1991', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 101, 'user2812', 'user2812@email.com', '2182resu', TO_DATE('05-03-1995', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 101, 'user6093', 'user6093@email.com', '3906resu', TO_DATE('20-06-1990', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 101, 'user1287', 'user1287@email.com', '7821resu', TO_DATE('10-07-1993', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 101, 'user3418', 'user3418@email.com', '8143resu', TO_DATE('14-09-1994', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 101, 'user5793', 'user5793@email.com', '3975resu', TO_DATE('11-08-1992', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 101, 'user4980', 'user4980@email.com', '0894resu', TO_DATE('03-10-1996', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 101, 'user7394', 'user7394@email.com', '4937resu', TO_DATE('06-12-1991', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 101, 'user3856', 'user3856@email.com', '6583resu', TO_DATE('02-02-1998', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 101, 'user9402', 'user9402@email.com', '2049resu', TO_DATE('15-05-1995', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 101, 'user2763', 'user2763@email.com', '3672resu', TO_DATE('22-01-1997', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 101, 'user6104', 'user6104@email.com', '4016resu', TO_DATE('13-03-1994', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 101, 'user9230', 'user9230@email.com', '0329resu', TO_DATE('26-04-1993', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 101, 'user4987', 'user4987@email.com', '7894resu', TO_DATE('05-09-1990', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 101, 'user2134', 'user2134@email.com', '4312resu', TO_DATE('09-11-1997', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 101, 'user3187', 'user3187@email.com', '7813resu', TO_DATE('28-08-1992', 'DD-MM-YYYY'));
INSERT INTO player_account VALUES(counter_player.NEXTVAL, 101, 'user7825', 'user7825@email.com', '5287resu', TO_DATE('19-02-1999', 'DD-MM-YYYY'));*/

prompt game_review_inserts

insert into game_review values ( counter_review.nextval,
                                 151,
                                 100,
                                 5,
                                 null );
insert into game_review values ( counter_review.nextval,
                                 152,
                                 100,
                                 4,
                                 null );
insert into game_review values ( counter_review.nextval,
                                 153,
                                 100,
                                 3,
                                 null );
insert into game_review values ( counter_review.nextval,
                                 154,
                                 100,
                                 2,
                                 null );
insert into game_review values ( counter_review.nextval,
                                 155,
                                 100,
                                 1,
                                 null );
insert into game_review values ( counter_review.nextval,
                                 156,
                                 100,
                                 5,
                                 null );
insert into game_review values ( counter_review.nextval,
                                 157,
                                 100,
                                 3,
                                 null );
insert into game_review values ( counter_review.nextval,
                                 158,
                                 100,
                                 4,
                                 null );


/*
INSERT INTO game_review VALUES(counter_review.NEXTVAL,177,101,3,NULL);
INSERT INTO game_review VALUES(counter_review.NEXTVAL,178,101,5,NULL);
INSERT INTO game_review VALUES(counter_review.NEXTVAL,179,101,4,NULL);
INSERT INTO game_review VALUES(counter_review.NEXTVAL,180,101,5,NULL);
INSERT INTO game_review VALUES(counter_review.NEXTVAL,181,101,4,NULL);
INSERT INTO game_review VALUES(counter_review.NEXTVAL,182,101,1,NULL);
INSERT INTO game_review VALUES(counter_review.NEXTVAL,183,101,2,NULL);
*/

prompt clasa_inserts

insert into clasa values ( counter_clasa.nextval,
                           'Warrior',
                           null,
                           100 );
insert into clasa values ( counter_clasa.nextval,
                           'Mage',
                           null,
                           100 );
insert into clasa values ( counter_clasa.nextval,
                           'Tank',
                           null,
                           100 );
insert into clasa values ( counter_clasa.nextval,
                           'Ranger',
                           null,
                           100 );
insert into clasa values ( counter_clasa.nextval,
                           'Craftman',
                           null,
                           100 );
insert into clasa values ( counter_clasa.nextval,
                           'Healer',
                           null,
                           100 );
insert into clasa values ( counter_clasa.nextval,
                           'Public_Speaker',
                           null,
                           100 );

/*
INSERT INTO clasa VALUES (counter_clasa.NEXTVAL, 101, 'MECHA_Warrior',NULL);
INSERT INTO clasa VALUES (counter_clasa.NEXTVAL, 101, 'MECHA_Mage',NULL);
INSERT INTO clasa VALUES (counter_clasa.NEXTVAL, 101, 'MECHA_Tank',NULL);
INSERT INTO clasa VALUES (counter_clasa.NEXTVAL, 101, 'MECHA_Ranger',NULL);
INSERT INTO clasa VALUES (counter_clasa.NEXTVAL, 101, 'MECHA_Craftman',NULL);
INSERT INTO clasa VALUES (counter_clasa.NEXTVAL, 101, 'MECHA_Healer',NULL);
INSERT INTO clasa VALUES (counter_clasa.NEXTVAL, 101, 'MECHA_Public_Speaker',NULL);
*/

prompt regions_inserts

insert into region values ( counter_region.nextval,
                            'Ashenreach Wastes',
                            'A scorched volcanic plain cloaked in ash and smoke. Rivers of molten lava flow through blackened ruins of an ancient fire-worshiping civilization. Fiery elementals and ember wolves roam this unforgiving land.'
                            ,
                            100 );
insert into region values ( counter_region.nextval,
                            'Frostmire Tundra',
                            'An endless frozen wilderness of icy winds and snow-covered plains. Crystalline glaciers conceal secrets of a lost age, while frost giants and ice wraiths stalk the blizzards.'
                            ,
                            100 );
insert into region values ( counter_region.nextval,
                            'Verdant Hollow',
                            'A lush, mystical forest teeming with ancient trees and glowing flora. Hidden groves harbor fae creatures and druids, but shadowy beasts hunt those who wander too far.'
                            ,
                            100 );
/*
INSERT INTO region VALUES (counter_region.NEXTVAL, 101, 'Neon Haven', 'A sprawling metropolis illuminated by neon lights, ruled by mega-corporations and hackers.');
INSERT INTO region VALUES (counter_region.NEXTVAL, 101, 'Chrome Alley', 'A gritty underworld district where black markets thrive, and cybernetic enhancements are bought for a price.');
INSERT INTO region VALUES (counter_region.NEXTVAL, 101, 'The Spire', 'A towering high-tech city center housing the elite, surrounded by surveillance drones and security bots.');
INSERT INTO region VALUES (counter_region.NEXTVAL, 101, 'Shadow Docks', 'A dark and damp harbor where smugglers offload illegal tech under the cover of perpetual rain.');
INSERT INTO region VALUES (counter_region.NEXTVAL, 101, 'Data Abyss', 'A virtual region deep in the net, where rogue AIs and hackers compete for control of encrypted secrets.');
*/

prompt guild_inserts

insert into guild values ( counter_guild.nextval,
                           5103,
                           'The Grovekeepers',
                           'A druidic guild devoted to preserving the balance of the mystical forest. They command nature power and guard sacred groves, striking down those who threaten the lands harmony.'
                           ,
                           to_date('01-01-1989','DD-MM-YYYY'),
                           15,
                           null );
insert into guild values ( counter_guild.nextval,
                           5101,
                           'The Emberforge Syndicate',
                           'Masters of fire and metal, this guild of blacksmiths and artificers crafts legendary weapons in the heart of molten forges. Their creations are sought across the lands but come at a heavy price.'
                           ,
                           to_date('01-02-1989','DD-MM-YYYY'),
                           20,
                           5301 );
insert into guild values ( counter_guild.nextval,
                           5102,
                           'The Glacial Wardens',
                           'Guardians of the frozen wilds, the Wardens are rugged survivalists and hunters. They protect ancient secrets buried within the glaciers and keep the tundras deadly creatures at bay.'
                           ,
                           to_date('01-01-1990','DD-MM-YYYY'),
                           10,
                           5301 );
insert into guild values ( counter_guild.nextval,
                           5101,
                           'The Molten Anvil',
                           'An elite group of smiths who craft fire-infused weapons and armor, wielding the secrets of molten energy to forge items of devastating power.'
                           ,
                           to_date('02-03-1992','DD-MM-YYYY'),
                           8,
                           5302 );
insert into guild values ( counter_guild.nextval,
                           5102,
                           'The Frostbound Hunters',
                           'Expert trackers and beast tamers who patrol the tundra, hunting monstrous threats and mastering the icy wilderness alongside their loyal frost wolves.'
                           ,
                           to_date('02-07-1999','DD-MM-YYYY'),
                           8,
                           5303 );

prompt insert_parties

insert into character_party values ( counter_party.nextval,
                                     5301,
                                     'PARTY_0',
                                     'MOTTO_PARTY_0' );
insert into character_party values ( counter_party.nextval,
                                     5302,
                                     'Thunderclad Order',
                                     'Forge the Future' );
insert into character_party values ( counter_party.nextval,
                                     5302,
                                     'Blazeguard',
                                     'Together We Stand' );
insert into character_party values ( counter_party.nextval,
                                     5303,
                                     'Venomguard',
                                     'Death Before Defeat' );
insert into character_party values ( counter_party.nextval,
                                     5303,
                                     'Ashenwatch',
                                     'Never Back Down' );
insert into character_party values ( counter_party.nextval,
                                     5304,
                                     'Iron Serpents',
                                     'By Blade and Blood' );
insert into character_party values ( counter_party.nextval,
                                     5304,
                                     'Shattered Order',
                                     'Glory to the Brave' );
insert into character_party values ( counter_party.nextval,
                                     5305,
                                     'Cyber Sentinels',
                                     'Strength in Unity' );
insert into character_party values ( counter_party.nextval,
                                     5305,
                                     'Shadowborn',
                                     'Only the Strong Survive' );

prompt MQ_inserts

insert into main_quest values ( counter_main_qst.nextval,
                                5101,
                                5302,
                                6001,
                                'The Molten Trail',
                                'Escort a caravan of Emberforge blacksmiths across a lava river.',
                                100,
                                100,
                                null,
                                0 );
insert into main_quest values ( counter_main_qst.nextval,
                                5101,
                                5302,
                                6002,
                                'Cinders of the Past:',
                                'Recover a lost fire relic from an ancient, ash-choked temple.',
                                500,
                                500,
                                null,
                                0 );
insert into main_quest values ( counter_main_qst.nextval,
                                5101,
                                5302,
                                6009,
                                'Emberwolf Hunt:',
                                'Track and slay a pack of ember wolves terrorizing a nearby camp.',
                                150,
                                200,
                                null,
                                0 );
insert into main_quest values ( counter_main_qst.nextval,
                                5101,
                                5302,
                                6004,
                                'Infernal Heart',
                                'Capture a Fire Elemental to power the forges of a blacksmith guild.',
                                200,
                                300,
                                null,
                                0 );
insert into main_quest values ( counter_main_qst.nextval,
                                5101,
                                5302,
                                6005,
                                'The Ashen Caravan:',
                                'Rescue traders trapped in a volcanic eruption.',
                                250,
                                250,
                                null,
                                0 );
insert into main_quest values ( counter_main_qst.nextval,
                                5101,
                                5302,
                                6006,
                                'Shattered Spire:',
                                'Investigate the sudden collapse of a basalt spire and the creatures it released.',
                                250,
                                300,
                                null,
                                0 );
insert into main_quest values ( counter_main_qst.nextval,
                                5101,
                                5302,
                                6007,
                                'Crimson Contract: ',
                                'Stop a mercenary group, the Cinderblades, from raiding a forge.',
                                170,
                                200,
                                null,
                                0 );
insert into main_quest values ( counter_main_qst.nextval,
                                5101,
                                5302,
                                6008,
                                'Smoke and Mirrors:',
                                'Dispel a magical smoke barrier surrounding a ruined fire temple',
                                460,
                                600,
                                null,
                                0 );
insert into main_quest values ( counter_main_qst.nextval,
                                5101,
                                5302,
                                6002,
                                'Molten Ambush:',
                                ' Lay a trap to defeat raiders hiding in lava caverns.',
                                800,
                                700,
                                null,
                                0 );
insert into main_quest values ( counter_main_qst.nextval,
                                5101,
                                5302,
                                6003,
                                'Rekindling the Flame:',
                                'Reignite an ancient forge rumored to craft legendary weapons.',
                                1000,
                                1000,
                                null,
                                0 );
insert into main_quest values ( counter_main_qst.nextval,
                                5101,
                                5305,
                                6001,
                                'Veins of Fire',
                                'Seal off a lava fissure threatening to destroy a nearby village.',
                                200,
                                300,
                                null,
                                0 );
insert into main_quest values ( counter_main_qst.nextval,
                                5101,
                                5305,
                                6003,
                                'The Ash Revenant:',
                                'Banish the fiery spirit of an ancient warlord haunting the region.',
                                1000,
                                1000,
                                null,
                                0 );
insert into main_quest values ( counter_main_qst.nextval,
                                5101,
                                5305,
                                6009,
                                'The Inferno Core',
                                'Retrieve a molten gem from deep within an unstable volcano.',
                                400,
                                700,
                                null,
                                0 );
insert into main_quest values ( counter_main_qst.nextval,
                                5101,
                                5305,
                                6004,
                                'Trail of Ashes',
                                'Follow the path of a mysterious figure leaving scorched earth in their wake',
                                400,
                                600,
                                null,
                                0 );
insert into main_quest values ( counter_main_qst.nextval,
                                5101,
                                5305,
                                6005,
                                'The Soot Thieves',
                                'Stop bandits stealing rare volcanic minerals for illicit trade',
                                200,
                                300,
                                null,
                                0 );
insert into main_quest values ( counter_main_qst.nextval,
                                5101,
                                5305,
                                6003,
                                'Forged in Flame:',
                                'Test your strength in the Emberforge Syndicate’s brutal arena trials',
                                2000,
                                2000,
                                null,
                                0 );
insert into main_quest values ( counter_main_qst.nextval,
                                5101,
                                5305,
                                6007,
                                'The Lava Leviathan:',
                                'Defeat a monstrous beast emerging from the molten depths.',
                                1000,
                                1000,
                                null,
                                0 );
insert into main_quest values ( counter_main_qst.nextval,
                                5101,
                                5305,
                                6002,
                                'Burning Secrets',
                                'Decode cryptic carvings found in a buried ash temple.',
                                1000,
                                1000,
                                null,
                                0 );
insert into main_quest values ( counter_main_qst.nextval,
                                5101,
                                5305,
                                6008,
                                'Cinderstorm',
                                ' Survive and escape an unnatural storm of fiery ash.',
                                400,
                                400,
                                null,
                                0 );
insert into main_quest values ( counter_main_qst.nextval,
                                5101,
                                5305,
                                6002,
                                'Emberforged Warband',
                                'Defend a town against a rampaging mercenary guild armed with fire-forged weapons.',
                                1000,
                                1000,
                                null,
                                0 );
insert into main_quest values ( counter_main_qst.nextval,
                                5102,
                                5303,
                                6001,
                                'Blizzard Rescue:',
                                'Locate a lost hunting party stranded in a deadly blizzard.',
                                300,
                                500,
                                null,
                                0 );
insert into main_quest values ( counter_main_qst.nextval,
                                5102,
                                5303,
                                6002,
                                'The Frozen Titan:',
                                'Defeat a frost giant guarding a sacred glacier.',
                                1000,
                                1000,
                                null,
                                0 );
insert into main_quest values ( counter_main_qst.nextval,
                                5102,
                                5303,
                                6003,
                                'Wraiths of the Ice:',
                                'Cleanse an ancient tomb of ice wraiths haunting its halls',
                                1000,
                                1000,
                                null,
                                0 );
insert into main_quest values ( counter_main_qst.nextval,
                                5102,
                                5303,
                                6004,
                                'Frost Wolf Pact',
                                'Tame a frost wolf to gain the trust of the Frostbound Hunters.',
                                1000,
                                1000,
                                null,
                                0 );
insert into main_quest values ( counter_main_qst.nextval,
                                5102,
                                5303,
                                6005,
                                'The Glacial Relic',
                                'Retrieve a magical artifact frozen within an ancient glacie',
                                1000,
                                1000,
                                null,
                                0 );
insert into main_quest values ( counter_main_qst.nextval,
                                5102,
                                5303,
                                6006,
                                'Tracks in the Snow:',
                                'Hunt a monstrous yeti terrorizing nearby villages',
                                1000,
                                1000,
                                null,
                                0 );
insert into main_quest values ( counter_main_qst.nextval,
                                5102,
                                5303,
                                6008,
                                'The Frostbound Trial:',
                                'Complete survival challenges set by the Glacial Wardens.',
                                1000,
                                1000,
                                null,
                                0 );
insert into main_quest values ( counter_main_qst.nextval,
                                5102,
                                5303,
                                6008,
                                'Breaking the Ice:',
                                'Escort a merchant caravan across a fragile frozen lake.',
                                1000,
                                1000,
                                null,
                                0 );
insert into main_quest values ( counter_main_qst.nextval,
                                5102,
                                5303,
                                6009,
                                'Frozen Whispers:',
                                'Investigate mysterious whispers leading travelers astray in a snowstorm.',
                                1000,
                                1000,
                                null,
                                0 );
insert into main_quest values ( counter_main_qst.nextval,
                                5102,
                                5303,
                                6004,
                                'Avalanche Warning:',
                                'Rescue villagers trapped under the aftermath of a massive avalanche',
                                1000,
                                1000,
                                null,
                                0 );
insert into main_quest values ( counter_main_qst.nextval,
                                5102,
                                5305,
                                6001,
                                'The Shattered Glacie',
                                ' Explore a newly-formed ice cavern after a glacier collapses.',
                                1000,
                                100,
                                null,
                                0 );
insert into main_quest values ( counter_main_qst.nextval,
                                5102,
                                5305,
                                6002,
                                'Glacial Beacon:',
                                'Restore an ancient magical beacon to guide lost travelers through the tundra',
                                300,
                                100,
                                null,
                                0 );
insert into main_quest values ( counter_main_qst.nextval,
                                5102,
                                5305,
                                6003,
                                'Frostbite Siege',
                                'Defend a village against marauders during an extreme cold front.',
                                400,
                                100,
                                null,
                                0 );
insert into main_quest values ( counter_main_qst.nextval,
                                5102,
                                5305,
                                6004,
                                'Crystals of Icefall',
                                'Retrieve rare frost crystals from dangerous icy caves',
                                900,
                                100,
                                null,
                                0 );
insert into main_quest values ( counter_main_qst.nextval,
                                5102,
                                5305,
                                6005,
                                'Winter’s Grasp',
                                'Stop a rogue Ice Mage freezing an entire settlement',
                                600,
                                100,
                                null,
                                0 );
insert into main_quest values ( counter_main_qst.nextval,
                                5102,
                                5305,
                                6006,
                                'Spirit of the Tundra',
                                'Commune with an ancient frost spirit to learn its secrets.',
                                70,
                                100,
                                null,
                                0 );
insert into main_quest values ( counter_main_qst.nextval,
                                5102,
                                5305,
                                6007,
                                'The Frozen Horde',
                                'Defeat a wave of undead soldiers emerging from the permafrost',
                                1000,
                                100,
                                null,
                                0 );
insert into main_quest values ( counter_main_qst.nextval,
                                5102,
                                5305,
                                6008,
                                'The Frostbound Raider',
                                'Track and stop a rogue hunter stealing enchanted pelts',
                                900,
                                100,
                                null,
                                0 );
insert into main_quest values ( counter_main_qst.nextval,
                                5102,
                                5305,
                                6005,
                                'Beneath the Ice',
                                'Uncover a hidden civilization buried beneath a glacier.',
                                666,
                                200,
                                null,
                                0 );
insert into main_quest values ( counter_main_qst.nextval,
                                5102,
                                5305,
                                6004,
                                'Winds of Winter:',
                                'Retrieve an enchanted horn that controls the freezing winds of Frostmire',
                                888,
                                300,
                                null,
                                0 );
insert into main_quest values ( counter_main_qst.nextval,
                                5103,
                                5301,
                                6001,
                                'The Fae Request',
                                'Deliver a message for the forest fae without angering the forest spirits.',
                                500,
                                500,
                                null,
                                0 );
insert into main_quest values ( counter_main_qst.nextval,
                                5103,
                                5301,
                                6002,
                                'The Corrupted Grove',
                                'Purge corruption spreading through a sacred druidic grove.',
                                600,
                                600,
                                null,
                                0 );
insert into main_quest values ( counter_main_qst.nextval,
                                5103,
                                5301,
                                6003,
                                'Whispers in the Leaves:',
                                'Follow mysterious voices to uncover a hidden fae sanctuary.',
                                700,
                                700,
                                null,
                                0 );
insert into main_quest values ( counter_main_qst.nextval,
                                5103,
                                5301,
                                6004,
                                'Shadowed Beast',
                                ' Hunt a monstrous creature threatening the balance of the forest.',
                                900,
                                800,
                                null,
                                0 );
insert into main_quest values ( counter_main_qst.nextval,
                                5103,
                                5301,
                                6005,
                                'The Grovekeeper Oath',
                                'Prove your worth by completing trials set by the Grovekeepers.',
                                200,
                                500,
                                null,
                                0 );
insert into main_quest values ( counter_main_qst.nextval,
                                5103,
                                5301,
                                6006,
                                'Roots of Evil',
                                'Destroy an ancient evil awakening deep within the forest roots',
                                1000,
                                1000,
                                null,
                                0 );
insert into main_quest values ( counter_main_qst.nextval,
                                5103,
                                5301,
                                6007,
                                'The Enchanted Bloom:',
                                ' Retrieve a rare magical flower protected by deadly flora and fauna',
                                500,
                                500,
                                null,
                                0 );
insert into main_quest values ( counter_main_qst.nextval,
                                5103,
                                5301,
                                6008,
                                'The Elder Tree',
                                ' Defend an ancient, sentient tree from lumber raiders',
                                500,
                                400,
                                null,
                                0 );
insert into main_quest values ( counter_main_qst.nextval,
                                5103,
                                5301,
                                6009,
                                'The Verdant Guardian',
                                'Aid a forest guardian in sealing a rift leaking shadowy creatures.',
                                200,
                                500,
                                null,
                                0 );
insert into main_quest values ( counter_main_qst.nextval,
                                5103,
                                5301,
                                6001,
                                'Moonlit Ritual',
                                'Safely oversee a druidic moonlight ritual threatened by intruders',
                                500,
                                500,
                                null,
                                0 );
insert into main_quest values ( counter_main_qst.nextval,
                                5103,
                                5301,
                                6002,
                                'Fae Trickery',
                                ' Resolve a conflict between villagers and mischievous fae pranksters.',
                                600,
                                800,
                                null,
                                0 );
insert into main_quest values ( counter_main_qst.nextval,
                                5103,
                                5301,
                                6001,
                                'Spore Crisis:',
                                'Eliminate dangerous spores spreading from a corrupted mushroom grove',
                                300,
                                400,
                                null,
                                0 );
insert into main_quest values ( counter_main_qst.nextval,
                                5103,
                                5301,
                                6003,
                                'The Hollow Heart',
                                'Retrieve a magical gem hidden in the heart of a living tree.',
                                500,
                                500,
                                null,
                                0 );
insert into main_quest values ( counter_main_qst.nextval,
                                5103,
                                5301,
                                6003,
                                'Entangled',
                                ' Rescue a trapped traveler ensnared by enchanted vines.',
                                500,
                                500,
                                null,
                                0 );
insert into main_quest values ( counter_main_qst.nextval,
                                5103,
                                5301,
                                6004,
                                'The Forest Shrouded',
                                'Navigate a mysterious, ever-shifting section of the woods.',
                                500,
                                500,
                                null,
                                0 );
insert into main_quest values ( counter_main_qst.nextval,
                                5103,
                                5301,
                                6005,
                                'Call of the Wild',
                                'Commune with an ancient forest spirit to gain its blessing',
                                1000,
                                2000,
                                null,
                                0 );
insert into main_quest values ( counter_main_qst.nextval,
                                5103,
                                5301,
                                6006,
                                'The Nightshade Plot',
                                ' Prevent an alchemist from using deadly nightshade to poison a village.',
                                500,
                                1000,
                                null,
                                0 );
insert into main_quest values ( counter_main_qst.nextval,
                                5103,
                                5301,
                                6007,
                                'Twilight Ambush',
                                'Defeat shadow creatures that emerge only at dusk.',
                                2000,
                                2000,
                                null,
                                0 );
insert into main_quest values ( counter_main_qst.nextval,
                                5103,
                                5301,
                                6001,
                                'Feral Awakening',
                                'Calm a pack of feral beasts driven mad by unnatural forces.',
                                1000,
                                1000,
                                null,
                                0 );
insert into main_quest values ( counter_main_qst.nextval,
                                5103,
                                5301,
                                6001,
                                'The Verdant Labyrinth',
                                'Explore and escape a maze of living trees that changes its layout.',
                                1000,
                                1000,
                                null,
                                0 );

prompt merchants_inserts

insert into guild_merchant values ( counter_merchant.nextval,
                                    'Brynleaf Willowroot',
                                    5301 );
insert into guild_merchant values ( counter_merchant.nextval,
                                    'Durn Hammerfall',
                                    5302 );
insert into guild_merchant values ( counter_merchant.nextval,
                                    'Kaelen Icebinder',
                                    5303 );
insert into guild_merchant values ( counter_merchant.nextval,
                                    'Rurik Flamestrike',
                                    5304 );
insert into guild_merchant values ( counter_merchant.nextval,
                                    'Durn Selka Snowpelt',
                                    5305 );

prompt SQ_inserts

insert into side_quest values ( counter_side_qst.nextval,
                                5101,
                                27002,
                                6001,
                                'SQ_The Molten Trail',
                                'Escort a caravan of Emberforge blacksmiths across a lava river.',
                                100,
                                100,
                                null,
                                0 );
insert into side_quest values ( counter_side_qst.nextval,
                                5101,
                                27002,
                                6002,
                                'SQ_Cinders of the Past',
                                'Recover a lost fire relic from an ancient, ash-choked temple.',
                                500,
                                500,
                                null,
                                0 );
insert into side_quest values ( counter_side_qst.nextval,
                                5101,
                                27002,
                                6003,
                                'SQ_Emberwolf Hunt',
                                'Track and slay a pack of ember wolves terrorizing a nearby camp.',
                                150,
                                200,
                                null,
                                0 );
insert into side_quest values ( counter_side_qst.nextval,
                                5101,
                                27002,
                                6004,
                                'SQ_Infernal Heart',
                                'Capture a Fire Elemental to power the forges of a blacksmith guild.',
                                200,
                                300,
                                null,
                                0 );
insert into side_quest values ( counter_side_qst.nextval,
                                5101,
                                27002,
                                6005,
                                'SQ_The Ashen Caravan',
                                'Rescue traders trapped in a volcanic eruption.',
                                250,
                                250,
                                null,
                                0 );
insert into side_quest values ( counter_side_qst.nextval,
                                5101,
                                27002,
                                6006,
                                'SQ_Shattered Spire',
                                'Investigate the sudden collapse of a basalt spire and the creatures it released.',
                                250,
                                300,
                                null,
                                0 );
insert into side_quest values ( counter_side_qst.nextval,
                                5101,
                                27002,
                                6007,
                                'SQ_Crimson Contract',
                                'Stop a mercenary group, the Cinderblades, from raiding a forge.',
                                170,
                                200,
                                null,
                                0 );
insert into side_quest values ( counter_side_qst.nextval,
                                5101,
                                27002,
                                6008,
                                'SQ_Smoke and Mirrors',
                                'Dispel a magical smoke barrier surrounding a ruined fire temple.',
                                460,
                                600,
                                null,
                                0 );
insert into side_quest values ( counter_side_qst.nextval,
                                5101,
                                27002,
                                6009,
                                'SQ_Molten Ambush',
                                'Lay a trap to defeat raiders hiding in lava caverns.',
                                800,
                                700,
                                null,
                                0 );
insert into side_quest values ( counter_side_qst.nextval,
                                5101,
                                27002,
                                6001,
                                'SQ_Rekindling the Flame',
                                'Reignite an ancient forge rumored to craft legendary weapons.',
                                1000,
                                1000,
                                null,
                                0 );
insert into side_quest values ( counter_side_qst.nextval,
                                5101,
                                27004,
                                6002,
                                'SQ_Veins of Fire',
                                'Seal off a lava fissure threatening to destroy a nearby village.',
                                200,
                                300,
                                null,
                                0 );
insert into side_quest values ( counter_side_qst.nextval,
                                5101,
                                27004,
                                6003,
                                'SQ_The Ash Revenant',
                                'Banish the fiery spirit of an ancient warlord haunting the region.',
                                1000,
                                1000,
                                null,
                                0 );
insert into side_quest values ( counter_side_qst.nextval,
                                5101,
                                27004,
                                6002,
                                'SQ_The Inferno Core',
                                'Retrieve a molten gem from deep within an unstable volcano.',
                                400,
                                700,
                                null,
                                0 );
insert into side_quest values ( counter_side_qst.nextval,
                                5101,
                                27004,
                                6003,
                                'SQ_Trail of Ashes',
                                'Follow the path of a mysterious figure leaving scorched earth in their wake.',
                                400,
                                600,
                                null,
                                0 );
insert into side_quest values ( counter_side_qst.nextval,
                                5101,
                                27004,
                                6002,
                                'SQ_The Soot Thieves',
                                'Stop bandits stealing rare volcanic minerals for illicit trade.',
                                200,
                                300,
                                null,
                                0 );
insert into side_quest values ( counter_side_qst.nextval,
                                5101,
                                27004,
                                6003,
                                'SQ_Forged in Flame',
                                'Test your strength in the Emberforge Syndicate’s brutal arena trials.',
                                2000,
                                2000,
                                null,
                                0 );
insert into side_quest values ( counter_side_qst.nextval,
                                5101,
                                27004,
                                6002,
                                'SQ_The Lava Leviathan',
                                'Defeat a monstrous beast emerging from the molten depths.',
                                1000,
                                1000,
                                null,
                                0 );
insert into side_quest values ( counter_side_qst.nextval,
                                5101,
                                27004,
                                6003,
                                'SQ_Burning Secrets',
                                'Decode cryptic carvings found in a buried ash temple.',
                                1000,
                                1000,
                                null,
                                0 );
insert into side_quest values ( counter_side_qst.nextval,
                                5101,
                                27004,
                                6001,
                                'SQ_Cinderstorm',
                                'Survive and escape an unnatural storm of fiery ash.',
                                400,
                                400,
                                null,
                                0 );
insert into side_quest values ( counter_side_qst.nextval,
                                5101,
                                27004,
                                6004,
                                'SQ_Emberforged Warband',
                                'Defend a town against a rampaging mercenary guild armed with fire-forged weapons.',
                                1000,
                                1000,
                                null,
                                0 );
insert into side_quest values ( counter_side_qst.nextval,
                                5102,
                                27003,
                                6001,
                                'SQ_Blizzard Rescue',
                                'Locate a lost hunting party stranded in a deadly blizzard.',
                                300,
                                500,
                                null,
                                0 );
insert into side_quest values ( counter_side_qst.nextval,
                                5102,
                                27003,
                                6002,
                                'SQ_The Frozen Titan',
                                'Defeat a frost giant guarding a sacred glacier.',
                                1000,
                                1000,
                                null,
                                0 );
insert into side_quest values ( counter_side_qst.nextval,
                                5102,
                                27003,
                                6003,
                                'SQ_Wraiths of the Ice',
                                'Cleanse an ancient tomb of ice wraiths haunting its halls.',
                                1000,
                                1000,
                                null,
                                0 );
insert into side_quest values ( counter_side_qst.nextval,
                                5102,
                                27003,
                                6004,
                                'SQ_Frost Wolf Pact',
                                'Tame a frost wolf to gain the trust of the Frostbound Hunters.',
                                1000,
                                1000,
                                null,
                                0 );
insert into side_quest values ( counter_side_qst.nextval,
                                5102,
                                27003,
                                6005,
                                'SQ_The Glacial Relic',
                                'Retrieve a magical artifact frozen within an ancient glacier.',
                                1000,
                                1000,
                                null,
                                0 );
insert into side_quest values ( counter_side_qst.nextval,
                                5102,
                                27003,
                                6006,
                                'SQ_Tracks in the Snow',
                                'Hunt a monstrous yeti terrorizing nearby villages.',
                                1000,
                                1000,
                                null,
                                0 );
insert into side_quest values ( counter_side_qst.nextval,
                                5102,
                                27003,
                                6008,
                                'SQ_The Frostbound Trial',
                                'Complete survival challenges set by the Glacial Wardens.',
                                1000,
                                1000,
                                null,
                                0 );
insert into side_quest values ( counter_side_qst.nextval,
                                5102,
                                27003,
                                6008,
                                'SQ_Breaking the Ice',
                                'Escort a merchant caravan across a fragile frozen lake.',
                                1000,
                                1000,
                                null,
                                0 );
insert into side_quest values ( counter_side_qst.nextval,
                                5102,
                                27003,
                                6009,
                                'SQ_Frozen Whispers',
                                'Investigate mysterious whispers leading travelers astray in a snowstorm.',
                                1000,
                                1000,
                                null,
                                0 );
insert into side_quest values ( counter_side_qst.nextval,
                                5102,
                                27003,
                                6004,
                                'SQ_Avalanche Warning',
                                'Rescue villagers trapped under the aftermath of a massive avalanche.',
                                1000,
                                1000,
                                null,
                                0 );
insert into side_quest values ( counter_side_qst.nextval,
                                5102,
                                27005,
                                6001,
                                'SQ_The Shattered Glacier',
                                'Explore a newly-formed ice cavern after a glacier collapses.',
                                1000,
                                100,
                                null,
                                0 );
insert into side_quest values ( counter_side_qst.nextval,
                                5102,
                                27005,
                                6002,
                                'SQ_Glacial Beacon',
                                'Restore an ancient magical beacon to guide lost travelers through the tundra.',
                                300,
                                100,
                                null,
                                0 );
insert into side_quest values ( counter_side_qst.nextval,
                                5102,
                                27005,
                                6003,
                                'SQ_Frostbite Siege',
                                'Defend a village against marauders during an extreme cold front.',
                                400,
                                100,
                                null,
                                0 );
insert into side_quest values ( counter_side_qst.nextval,
                                5102,
                                27005,
                                6004,
                                'SQ_Crystals of Icefall',
                                'Retrieve rare frost crystals from dangerous icy caves.',
                                900,
                                100,
                                null,
                                0 );
insert into side_quest values ( counter_side_qst.nextval,
                                5102,
                                27005,
                                6005,
                                'SQ_Winter’s Grasp',
                                'Stop a rogue Ice Mage freezing an entire settlement.',
                                600,
                                100,
                                null,
                                0 );
insert into side_quest values ( counter_side_qst.nextval,
                                5102,
                                27005,
                                6006,
                                'SQ_Spirit of the Tundra',
                                'Commune with an ancient frost spirit to learn its secrets.',
                                70,
                                100,
                                null,
                                0 );
insert into side_quest values ( counter_side_qst.nextval,
                                5102,
                                27005,
                                6007,
                                'SQ_The Frozen Horde',
                                'Defeat a wave of undead soldiers emerging from the permafrost.',
                                1000,
                                100,
                                null,
                                0 );
insert into side_quest values ( counter_side_qst.nextval,
                                5102,
                                27005,
                                6008,
                                'SQ_The Frostbound Raider',
                                'Track and stop a rogue hunter stealing enchanted pelts.',
                                900,
                                100,
                                null,
                                0 );
insert into side_quest values ( counter_side_qst.nextval,
                                5102,
                                27005,
                                6005,
                                'SQ_Beneath the Ice',
                                'Uncover a hidden civilization buried beneath a glacier.',
                                666,
                                200,
                                null,
                                0 );
insert into side_quest values ( counter_side_qst.nextval,
                                5102,
                                27005,
                                6004,
                                'SQ_Winds of Winter',
                                'Retrieve an enchanted horn that controls the freezing winds of Frostmire.',
                                888,
                                300,
                                null,
                                0 );
insert into side_quest values ( counter_side_qst.nextval,
                                5103,
                                27001,
                                6001,
                                'SQ_The Fae Request',
                                'Deliver a message for the forest fae without angering the forest spirits.',
                                500,
                                500,
                                null,
                                0 );
insert into side_quest values ( counter_side_qst.nextval,
                                5103,
                                27001,
                                6002,
                                'SQ_The Corrupted Grove',
                                'Purge corruption spreading through a sacred druidic grove.',
                                600,
                                600,
                                null,
                                0 );
insert into side_quest values ( counter_side_qst.nextval,
                                5103,
                                27001,
                                6003,
                                'SQ_Whispers in the Leaves',
                                'Follow mysterious voices to uncover a hidden fae sanctuary.',
                                700,
                                700,
                                null,
                                0 );
insert into side_quest values ( counter_side_qst.nextval,
                                5103,
                                27001,
                                6004,
                                'SQ_Shadowed Beast',
                                'Hunt a monstrous creature threatening the balance of the forest.',
                                900,
                                800,
                                null,
                                0 );
insert into side_quest values ( counter_side_qst.nextval,
                                5103,
                                27001,
                                6005,
                                'SQ_The Grovekeeper Oath',
                                'Prove your worth by completing trials set by the Grovekeepers.',
                                200,
                                500,
                                null,
                                0 );
insert into side_quest values ( counter_side_qst.nextval,
                                5103,
                                27001,
                                6006,
                                'SQ_Roots of Evil',
                                'Destroy an ancient evil awakening deep within the forest roots.',
                                1000,
                                1000,
                                null,
                                0 );
insert into side_quest values ( counter_side_qst.nextval,
                                5103,
                                27001,
                                6007,
                                'SQ_The Enchanted Bloom',
                                'Retrieve a rare magical flower protected by deadly flora and fauna.',
                                500,
                                500,
                                null,
                                0 );
insert into side_quest values ( counter_side_qst.nextval,
                                5103,
                                27001,
                                6008,
                                'SQ_The Elder Tree',
                                'Defend an ancient, sentient tree from lumber raiders.',
                                500,
                                400,
                                null,
                                0 );
insert into side_quest values ( counter_side_qst.nextval,
                                5103,
                                27001,
                                6009,
                                'SQ_The Verdant Guardian',
                                'Aid a forest guardian in sealing a rift leaking shadowy creatures.',
                                200,
                                500,
                                null,
                                0 );
insert into side_quest values ( counter_side_qst.nextval,
                                5103,
                                27001,
                                6001,
                                'SQ_Moonlit Ritual',
                                'Safely oversee a druidic moonlight ritual threatened by intruders.',
                                500,
                                500,
                                null,
                                0 );
insert into side_quest values ( counter_side_qst.nextval,
                                5103,
                                27001,
                                6002,
                                'SQ_Fae Trickery',
                                'Resolve a conflict between villagers and mischievous fae pranksters.',
                                600,
                                800,
                                null,
                                0 );
insert into side_quest values ( counter_side_qst.nextval,
                                5103,
                                27001,
                                6001,
                                'SQ_Spore Crisis',
                                'Eliminate dangerous spores spreading from a corrupted mushroom grove.',
                                300,
                                400,
                                null,
                                0 );
insert into side_quest values ( counter_side_qst.nextval,
                                5103,
                                27001,
                                6003,
                                'SQ_The Hollow Heart',
                                'Retrieve a magical gem hidden in the heart of a living tree.',
                                500,
                                500,
                                null,
                                0 );
insert into side_quest values ( counter_side_qst.nextval,
                                5103,
                                27001,
                                6003,
                                'SQ_Entangled',
                                'Rescue a trapped traveler ensnared by enchanted vines.',
                                500,
                                500,
                                null,
                                0 );
insert into side_quest values ( counter_side_qst.nextval,
                                5103,
                                27001,
                                6004,
                                'SQ_The Forest Shrouded',
                                'Navigate a mysterious, ever-shifting section of the woods.',
                                500,
                                500,
                                null,
                                0 );
insert into side_quest values ( counter_side_qst.nextval,
                                5103,
                                27001,
                                6005,
                                'SQ_Call of the Wild',
                                'Commune with an ancient forest spirit to gain its blessing.',
                                1000,
                                2000,
                                null,
                                0 );
insert into side_quest values ( counter_side_qst.nextval,
                                5103,
                                27001,
                                6006,
                                'SQ_The Nightshade Plot',
                                'Prevent an alchemist from using deadly nightshade to poison a village.',
                                500,
                                1000,
                                null,
                                0 );
insert into side_quest values ( counter_side_qst.nextval,
                                5103,
                                27001,
                                6007,
                                'SQ_Twilight Ambush',
                                'Defeat shadow creatures that emerge only at dusk.',
                                2000,
                                2000,
                                null,
                                0 );
insert into side_quest values ( counter_side_qst.nextval,
                                5103,
                                27001,
                                6001,
                                'SQ_Feral Awakening',
                                'Calm a pack of feral beasts driven mad by unnatural forces.',
                                1000,
                                1000,
                                null,
                                0 );
insert into side_quest values ( counter_side_qst.nextval,
                                5103,
                                27001,
                                6001,
                                'SQ_The Verdant Labyrinth',
                                'Explore and escape a maze of living trees that changes its layout.',
                                1000,
                                1000,
                                null,
                                0 );

prompt items_inserts

insert into item values ( counter_item.nextval,
                          100,
                          27001,
                          5001,
                          'item_0',
                          'description_0',
                          1,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27001,
                          5001,
                          'Thornblade Longsword',
                          'A blade laced with thorns, causing bleeding wounds.',
                          6500,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27001,
                          5001,
                          'Wildguard Axe',
                          'A balanced axe that grows stronger in forests.',
                          7500,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27001,
                          5002,
                          'Verdant Spellroot Staff',
                          'A staff that boosts nature-based spells.',
                          8000,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27001,
                          5002,
                          'Bloomcaller Wand',
                          'A wand that summons blooming vines to bind foes.',
                          5800,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27001,
                          5003,
                          'Barkskin Bracers',
                          'Bracers that increase armor and resistance.',
                          7200,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27001,
                          5003,
                          'Elderwood Shield',
                          'A sturdy shield made from enchanted oak.',
                          9500,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27001,
                          5004,
                          'Sylvan Arrow Quiver',
                          'A quiver of arrows that grow sharp thorns on hit.',
                          5500,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27001,
                          5004,
                          'Rootbound Bow',
                          'A bow that entangles targets with roots on impact.',
                          6800,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27001,
                          5005,
                          'Artisan’s Leaf Chisel',
                          'A tool that carves wood with precision and speed.',
                          4800,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27001,
                          5005,
                          'Greenwood Carver',
                          'A knife designed for detailed woodcraft.',
                          5200,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27001,
                          5006,
                          'Lifebloom Amulet',
                          'Slowly restores health to the wearer over time.',
                          9000,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27001,
                          5006,
                          'Dewdrop Flask',
                          'A flask that heals allies with restorative water.',
                          6000,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27001,
                          5007,
                          'Voice of the Grove Tome',
                          'Enhances persuasion when speaking to forest beings.',
                          10000,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27001,
                          5007,
                          'Sylvan Ring of Clarity',
                          'Increases charisma and speech clarity.',
                          8500,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27002,
                          5001,
                          'Embersteel Warblade',
                          'A heavy sword that glows hot and burns foes.',
                          7500,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27002,
                          5001,
                          'Molten Cleaver',
                          'A fiery cleaver that sears through armor.',
                          6800,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27002,
                          5002,
                          'Flamecaller’s Rod',
                          'A rod that enhances fire-based spells.',
                          8500,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27002,
                          5002,
                          'Infernal Grimoire',
                          'A spellbook containing ancient fire magic.',
                          9000,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27002,
                          5003,
                          'Moltenplate Armor',
                          'Heavy fire-resistant armor for unmatched defense.',
                          9800,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27002,
                          5003,
                          'Cindersteel Helm',
                          'A helm that reduces fire damage taken.',
                          6200,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27002,
                          5004,
                          'Fire-Forged Arrows',
                          'Arrows that ignite on impact, dealing fire damage.',
                          5200,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27002,
                          5004,
                          'Emberlong Bow',
                          'A bow that launches flaming arrows.',
                          8000,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27002,
                          5005,
                          'Smelter’s Forgehammer',
                          'A hammer that boosts blacksmith crafting speed.',
                          3000,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27002,
                          5005,
                          'Ember Tongs',
                          'Tongs that safely manipulate molten metal.',
                          4500,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27002,
                          5006,
                          'Emberlight Relic',
                          'Restores minor health while reducing fire damage.',
                          6200,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27002,
                          5006,
                          'Warmthstone Amulet',
                          'Provides warmth and minor healing in cold regions.',
                          7500,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27002,
                          5007,
                          'Banner of the Syndicate',
                          'Boosts morale and inspires nearby allies.',
                          9000,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27002,
                          5007,
                          'Ring of Ember Speech',
                          'Amplifies the user’s voice with a fiery resonance.',
                          7000,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27003,
                          5001,
                          'Frostfang Greatsword',
                          'A massive blade that freezes enemies on hit.',
                          7000,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27003,
                          5001,
                          'Icecrush Hammer',
                          'A hammer that shatters armor with chilling force.',
                          8500,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27003,
                          5002,
                          'Staff of Endless Winter',
                          'Boosts ice spells and creates minor blizzards.',
                          8200,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27003,
                          5002,
                          'Snowcaller Orb',
                          'A magical orb that conjures frost-based attacks.',
                          6800,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27003,
                          5003,
                          'Icewarden Shield',
                          'A shield that absorbs frost damage and counters.',
                          9500,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27003,
                          5003,
                          'Glacierplate Armor',
                          'Frost-resistant armor for maximum defense.',
                          10000,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27003,
                          5004,
                          'Frostshot Quiver',
                          'Frost-tipped arrows that slow targets.',
                          6800,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27003,
                          5004,
                          'Winterstalker Bow',
                          'A bow that tracks heat signatures in the snow.',
                          7200,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27003,
                          5005,
                          'Frostbite Pickaxe',
                          'A pickaxe that breaks through ice and frozen ore.',
                          4500,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27003,
                          5005,
                          'Chisel of Icecarving',
                          'A chisel designed for crafting with ice.',
                          5000,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27003,
                          5006,
                          'Glacial Healing Stone',
                          'A stone that channels cold energy to heal wounds.',
                          7300,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27003,
                          5006,
                          'Frostbloom Potion',
                          'A potion that cures frostbite and restores health.',
                          6200,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27003,
                          5007,
                          'Whisper of the Blizzard',
                          'Amplifies the user’s voice over large distances.',
                          8500,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27003,
                          5007,
                          'Frozen Call Horn',
                          'A horn that carries sound through icy storms.',
                          9000,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27004,
                          5001,
                          'Infernal Greataxe',
                          'A massive axe with a fiery edge that sears foes.',
                          7000,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27004,
                          5001,
                          'Pyrestone Saber',
                          'A saber that heats up on repeated strikes.',
                          6800,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27004,
                          5002,
                          'Magmaheart Staff',
                          'Enhances fire magic and erupts flames in combat.',
                          9000,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27004,
                          5002,
                          'Lavaflow Orb',
                          'Channels molten energy into ranged spells.',
                          7500,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27004,
                          5003,
                          'Volcanic Bulwark',
                          'A massive shield that withstands explosions.',
                          9800,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27004,
                          5003,
                          'Emberforged Pauldrons',
                          'Shoulders that deflect fire damage.',
                          7000,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27004,
                          5004,
                          'Lavaforged Bow',
                          'Fires molten arrows that explode on impact.',
                          6500,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27004,
                          5004,
                          'Flamehunter Arrows',
                          'Arrows that seek heat and deal fire damage.',
                          5800,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27004,
                          5005,
                          'Emberforge Tools',
                          'Tools that improve smithing precision and speed.',
                          4000,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27004,
                          5005,
                          'Heatshard Tongs',
                          'Fire-resistant tongs for crafting molten items.',
                          5200,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27004,
                          5006,
                          'Firebound Band',
                          'A ring that heals burns and fire-related wounds.',
                          6200,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27004,
                          5006,
                          'Warmthkeeper Flask',
                          'A potion that restores warmth and health.',
                          5500,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27004,
                          5007,
                          'Pyrespeaker’s Horn',
                          'Projects the user’s voice loudly and powerfully.',
                          7500,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27004,
                          5007,
                          'Banner of the Flame',
                          'Inspires allies and increases morale.',
                          8000,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27005,
                          5001,
                          'Beastslayer Axe',
                          'A sharp axe designed for slaying tundra beasts.',
                          6000,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27005,
                          5001,
                          'Snowcleaver Blade',
                          'A sword that deals bonus damage to icy foes.',
                          7200,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27005,
                          5002,
                          'Frostcaller’s Charm',
                          'A charm that enhances frost magic spells.',
                          7000,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27005,
                          5002,
                          'Winterborn Amulet',
                          'Boosts ice magic and resists cold damage.',
                          6800,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27005,
                          5003,
                          'Icebear Hide Cloak',
                          'A thick cloak that absorbs cold damage.',
                          7800,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27005,
                          5003,
                          'Frostbound Helm',
                          'A helm that shields the wearer from cold magic.',
                          8000,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27005,
                          5004,
                          'Wolfstalker Bow',
                          'A bow designed for silent hunting and precision.',
                          5500,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27005,
                          5004,
                          'Icestrike Arrows',
                          'Arrows that deal cold damage and slow targets.',
                          6000,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27005,
                          5005,
                          'Tracker’s Engraving Tool',
                          'A tool for crafting and marking leather goods.',
                          3500,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27005,
                          5005,
                          'Iceweaver’s Kit',
                          'A kit that helps craft ice-resistant gear.',
                          4200,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27005,
                          5006,
                          'Arctic Remedy Flask',
                          'A flask that cures frostbite and cold ailments.',
                          4200,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27005,
                          5006,
                          'Snowbloom Elixir',
                          'A healing potion made from rare tundra flowers.',
                          5800,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27005,
                          5007,
                          'Howler’s Horn',
                          'A horn that calls allies or scares off predators.',
                          6500,
                          0 );
insert into item values ( counter_item.nextval,
                          100,
                          27005,
                          5007,
                          'Tundra Voice Pendant',
                          'Amplifies the user’s voice during harsh winds.',
                          7500,
                          0 );

prompt inventory_inserts

insert into inventory values ( counter_inventory.nextval,
                               30001,
                               30001,
                               30001,
                               30001 );
insert into inventory values ( counter_inventory.nextval,
                               30001,
                               30001,
                               30001,
                               30001 );
insert into inventory values ( counter_inventory.nextval,
                               30001,
                               30001,
                               30001,
                               30001 );
insert into inventory values ( counter_inventory.nextval,
                               30001,
                               30001,
                               30001,
                               30001 );
insert into inventory values ( counter_inventory.nextval,
                               30001,
                               30001,
                               30001,
                               30001 );
insert into inventory values ( counter_inventory.nextval,
                               30001,
                               30001,
                               30001,
                               30001 );
insert into inventory values ( counter_inventory.nextval,
                               30001,
                               30001,
                               30001,
                               30001 );
insert into inventory values ( counter_inventory.nextval,
                               30001,
                               30001,
                               30001,
                               30001 );
insert into inventory values ( counter_inventory.nextval,
                               30001,
                               30001,
                               30001,
                               30001 );
insert into inventory values ( counter_inventory.nextval,
                               30001,
                               30001,
                               30001,
                               30001 );
insert into inventory values ( counter_inventory.nextval,
                               30001,
                               30001,
                               30001,
                               30001 );
insert into inventory values ( counter_inventory.nextval,
                               30001,
                               30001,
                               30001,
                               30001 );
insert into inventory values ( counter_inventory.nextval,
                               30001,
                               30001,
                               30001,
                               30001 );
insert into inventory values ( counter_inventory.nextval,
                               30001,
                               30001,
                               30001,
                               30001 );
insert into inventory values ( counter_inventory.nextval,
                               30001,
                               30001,
                               30001,
                               30001 );
insert into inventory values ( counter_inventory.nextval,
                               30001,
                               30001,
                               30001,
                               30001 );
insert into inventory values ( counter_inventory.nextval,
                               30001,
                               30001,
                               30001,
                               30001 );
insert into inventory values ( counter_inventory.nextval,
                               30001,
                               30001,
                               30001,
                               30001 );
insert into inventory values ( counter_inventory.nextval,
                               30001,
                               30001,
                               30001,
                               30001 );
insert into inventory values ( counter_inventory.nextval,
                               30001,
                               30001,
                               30001,
                               30001 );
insert into inventory values ( counter_inventory.nextval,
                               30001,
                               30001,
                               30001,
                               30001 );
insert into inventory values ( counter_inventory.nextval,
                               30001,
                               30001,
                               30001,
                               30001 );
insert into inventory values ( counter_inventory.nextval,
                               30001,
                               30001,
                               30001,
                               30001 );
insert into inventory values ( counter_inventory.nextval,
                               30001,
                               30001,
                               30001,
                               30001 );
insert into inventory values ( counter_inventory.nextval,
                               30001,
                               30001,
                               30001,
                               30001 );
insert into inventory values ( counter_inventory.nextval,
                               30001,
                               30001,
                               30001,
                               30001 );
insert into inventory values ( counter_inventory.nextval,
                               30001,
                               30001,
                               30001,
                               30001 );
insert into inventory values ( counter_inventory.nextval,
                               30001,
                               30001,
                               30001,
                               30001 );
insert into inventory values ( counter_inventory.nextval,
                               30001,
                               30001,
                               30001,
                               30001 );
insert into inventory values ( counter_inventory.nextval,
                               30001,
                               30001,
                               30001,
                               30001 );
insert into inventory values ( counter_inventory.nextval,
                               30001,
                               30001,
                               30001,
                               30001 );
insert into inventory values ( counter_inventory.nextval,
                               30001,
                               30001,
                               30001,
                               30001 );
insert into inventory values ( counter_inventory.nextval,
                               30001,
                               30001,
                               30001,
                               30001 );
insert into inventory values ( counter_inventory.nextval,
                               30001,
                               30001,
                               30001,
                               30001 );
insert into inventory values ( counter_inventory.nextval,
                               30001,
                               30001,
                               30001,
                               30001 );
insert into inventory values ( counter_inventory.nextval,
                               30001,
                               30001,
                               30001,
                               30001 );

prompt caracters_inserts

insert into caracter values ( counter_caracter.nextval,
                              'THECHOSENONE',
                              6001,
                              11001,
                              5001 );
insert into caracter values ( counter_caracter.nextval,
                              'Thalric Ironfist27',
                              6001,
                              11002,
                              5001 );
insert into caracter values ( counter_caracter.nextval,
                              'Eldrin Starcaller07',
                              6001,
                              11003,
                              5002 );
insert into caracter values ( counter_caracter.nextval,
                              'Rurik Stoneguard99',
                              6001,
                              11004,
                              5003 );
insert into caracter values ( counter_caracter.nextval,
                              'Sylwen Thornshadow60',
                              6001,
                              11005,
                              5004 );
insert into caracter values ( counter_caracter.nextval,
                              'Garrik Ironforge04',
                              6001,
                              11006,
                              5005 );
insert into caracter values ( counter_caracter.nextval,
                              'Lira Mossheart45',
                              6001,
                              11007,
                              5006 );
insert into caracter values ( counter_caracter.nextval,
                              'Arion Spellweaver03',
                              6001,
                              11008,
                              5007 );
insert into caracter values ( counter_caracter.nextval,
                              'Brynn Stonecleaver15',
                              6002,
                              11009,
                              5001 );
insert into caracter values ( counter_caracter.nextval,
                              'Selina Frostwhisper12',
                              6002,
                              11010,
                              5002 );
insert into caracter values ( counter_caracter.nextval,
                              'Ulric Flamebinder42',
                              6003,
                              11011,
                              5001 );
insert into caracter values ( counter_caracter.nextval,
                              'Ashryn Swiftquiver17',
                              6003,
                              11012,
                              5006 );
insert into caracter values ( counter_caracter.nextval,
                              'Kaelen Icehelm25',
                              6004,
                              11013,
                              5003 );
insert into caracter values ( counter_caracter.nextval,
                              'Thyra Mistarrow84',
                              6004,
                              11014,
                              5004 );
insert into caracter values ( counter_caracter.nextval,
                              'Dulric Stonewright73',
                              6004,
                              11015,
                              5005 );
insert into caracter values ( counter_caracter.nextval,
                              'Torgath Ironskin72',
                              6005,
                              11016,
                              5003 );
insert into caracter values ( counter_caracter.nextval,
                              'Zeraphine Nightveil78',
                              6005,
                              11017,
                              5006 );
insert into caracter values ( counter_caracter.nextval,
                              'Grundar Forgewall82',
                              6005,
                              11018,
                              5007 );
insert into caracter values ( counter_caracter.nextval,
                              'Serka Bloodedge81',
                              6006,
                              11019,
                              5001 );
insert into caracter values ( counter_caracter.nextval,
                              'Kaelis Emberflame66',
                              6006,
                              11020,
                              5002 );
insert into caracter values ( counter_caracter.nextval,
                              'Ravenna Windstalker31',
                              6006,
                              11021,
                              5004 );
insert into caracter values ( counter_caracter.nextval,
                              'Selric Tinkerblade09',
                              6006,
                              11022,
                              5005 );
insert into caracter values ( counter_caracter.nextval,
                              'Brynor Earthshaker88',
                              6007,
                              11023,
                              5003 );
insert into caracter values ( counter_caracter.nextval,
                              'Vyrantha Frostbinder59',
                              6007,
                              11024,
                              5002 );
insert into caracter values ( counter_caracter.nextval,
                              'Branna Copperhand22',
                              6007,
                              11025,
                              5005 );
insert into caracter values ( counter_caracter.nextval,
                              'Fenric Longbow62',
                              6007,
                              11026,
                              5006 );
insert into caracter values ( counter_caracter.nextval,
                              'Helmara Shieldheart53',
                              6008,
                              11027,
                              5003 );
insert into caracter values ( counter_caracter.nextval,
                              'Lyara Moondreamer34',
                              6008,
                              11028,
                              5002 );
insert into caracter values ( counter_caracter.nextval,
                              'Kaelis Wildstrider47',
                              6008,
                              11029,
                              5004 );
insert into caracter values ( counter_caracter.nextval,
                              'Rurik Emberwright95',
                              6008,
                              11030,
                              5005 );
insert into caracter values ( counter_caracter.nextval,
                              'Elowen Lightbloom26',
                              6008,
                              11031,
                              5006 );
insert into caracter values ( counter_caracter.nextval,
                              'Garron Blackblade93',
                              6009,
                              11032,
                              5001 );
insert into caracter values ( counter_caracter.nextval,
                              'Snowcleaver Blade72',
                              6009,
                              11033,
                              5004 );
insert into caracter values ( counter_caracter.nextval,
                              'Rurik Emberwright95',
                              6009,
                              11034,
                              5005 );
insert into caracter values ( counter_caracter.nextval,
                              'Firebound Band42',
                              6009,
                              11035,
                              5006 );
insert into caracter values ( counter_caracter.nextval,
                              'Voice of Grove Tome47',
                              6009,
                              11036,
                              5007 );

prompt creating_game_account_caracter_inserts

insert into game_account_caracter values ( 100,
                                           151,
                                           9001 );
insert into game_account_caracter values ( 100,
                                           152,
                                           9002 );
insert into game_account_caracter values ( 100,
                                           153,
                                           9003 );
insert into game_account_caracter values ( 100,
                                           154,
                                           9004 );
insert into game_account_caracter values ( 100,
                                           155,
                                           9005 );
insert into game_account_caracter values ( 100,
                                           156,
                                           9006 );
insert into game_account_caracter values ( 100,
                                           157,
                                           9007 );
insert into game_account_caracter values ( 100,
                                           158,
                                           9008 );
insert into game_account_caracter values ( 100,
                                           159,
                                           9009 );
insert into game_account_caracter values ( 100,
                                           160,
                                           9010 );
insert into game_account_caracter values ( 100,
                                           161,
                                           9011 );
insert into game_account_caracter values ( 100,
                                           162,
                                           9012 );
insert into game_account_caracter values ( 100,
                                           163,
                                           9013 );
insert into game_account_caracter values ( 100,
                                           164,
                                           9014 );
insert into game_account_caracter values ( 100,
                                           165,
                                           9015 );
insert into game_account_caracter values ( 100,
                                           166,
                                           9016 );
insert into game_account_caracter values ( 100,
                                           167,
                                           9017 );
insert into game_account_caracter values ( 100,
                                           168,
                                           9018 );
insert into game_account_caracter values ( 100,
                                           169,
                                           9019 );
insert into game_account_caracter values ( 100,
                                           170,
                                           9020 );
insert into game_account_caracter values ( 100,
                                           171,
                                           9021 );
insert into game_account_caracter values ( 100,
                                           172,
                                           9022 );
insert into game_account_caracter values ( 100,
                                           173,
                                           9023 );
insert into game_account_caracter values ( 100,
                                           174,
                                           9024 );
insert into game_account_caracter values ( 100,
                                           175,
                                           9025 );
insert into game_account_caracter values ( 100,
                                           176,
                                           9026 );
insert into game_account_caracter values ( 100,
                                           177,
                                           9027 );
insert into game_account_caracter values ( 100,
                                           178,
                                           9028 );
insert into game_account_caracter values ( 100,
                                           179,
                                           9029 );
insert into game_account_caracter values ( 100,
                                           180,
                                           9030 );
insert into game_account_caracter values ( 100,
                                           181,
                                           9031 );
insert into game_account_caracter values ( 100,
                                           182,
                                           9032 );
insert into game_account_caracter values ( 100,
                                           183,
                                           9033 );
insert into game_account_caracter values ( 100,
                                           184,
                                           9034 );
insert into game_account_caracter values ( 100,
                                           185,
                                           9035 );
insert into game_account_caracter values ( 100,
                                           186,
                                           9036 );


insert into player_account values ( counter_player.nextval,
                                    'usertest',
                                    'usertest@email.com',
                                    '1resutest',
                                    to_date('12 december 2019','DD-MM-YYYY') );
insert into inventory values ( counter_inventory.nextval,
                               30001,
                               30001,
                               30001,
                               30001 );
insert into caracter values ( counter_caracter.nextval,
                              'THERIGHTONE',
                              6001,
                              11037,
                              5001 );
insert into game_account_caracter values ( 101,
                                           187,
                                           9037 );

prompt Done :)