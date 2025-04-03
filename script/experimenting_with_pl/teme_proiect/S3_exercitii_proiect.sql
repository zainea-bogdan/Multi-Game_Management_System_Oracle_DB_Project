-- EXERCISES for S3 - Structuri de control 

/*Enunt1 : In cadrul jocului 100, se stie ca itemul infernal grimoire este un item super puternic si ft scump, insa s-a descoperit ca un player are in cadrul itemelor din inventar, acest item care necesita clasa 5002 si playerul are alta clasa(ex: 5001),
 sa se afiseze id-ul contului, numele caracterului 
perioada  cat va avea contul suspendat, si acest lucru sa se reflecte in tabela game account - se va calcula dupa o formula stupida:) */

/*exemplu didactic playerul cu caracterul cu id 9001, numit THECHOSENONE, vreau sa fie ala care a folosit cheat code*/


 /*Cheat codul sql prin care playerul si-a introdus itemul in item_available unul pe care nu avea voie, si anume cel mai scump item al clasei 5002 si care se numeste infernal grimoire*/
/*gasirea elementului*/
select id_item
  from item
 where item_price = (
      select max(item_price)
        from item
       where character_class_id = 5002
       group by character_class_id
   )
   and character_class_id = 5002
   and item_name = 'Infernal Grimoire';
   -- 30019 este itemul cautat

-- 11001 este id inventoryul caracterului THECHOSENONE
/*inserare in propriul inventar*/
update inventory
   set
   item_available_1 = (
      select id_item
        from item
       where item_price = (
            select max(item_price)
              from item
             where character_class_id = 5002
             group by character_class_id
         )
         and character_class_id = 5002
         and item_name = 'Infernal Grimoire'
   )
 where id_inventory = (
   select id_inventory
     from caracter
    where caracter_name = 'THECHOSENONE'
);

commit;
/*din acest punct se cauta acest player de catre DBA si sa ii suspende contul*/

select id_item
  from item
 where item_name = 'Infernal Grimoire';

select id_inventory
  from inventory
 where item_available_1 = (
   select id_item
     from item
    where item_name = 'Infernal Grimoire'
)
union
select id_inventory
  from inventory
 where item_available_2 = (
   select id_item
     from item
    where item_name = 'Infernal Grimoire'
)
union
select id_inventory
  from inventory
 where item_available_1 = (
   select id_item
     from item
    where item_name = 'Infernal Grimoire'
);
-- a gasit id caracterului care a trisat 

select id_caracter
  from caracter
 where id_inventory = (
   select id_inventory
     from inventory
    where item_available_1 = (
      select id_item
        from item
       where item_name = 'Infernal Grimoire'
   )
   union
   select id_inventory
     from inventory
    where item_available_2 = (
      select id_item
        from item
       where item_name = 'Infernal Grimoire'
   )
   union
   select id_inventory
     from inventory
    where item_available_1 = (
      select id_item
        from item
       where item_name = 'Infernal Grimoire'
   )
);
-- la gasit pe impostor si ia luat id-ul 9001
select id_player
  from game_account_caracter
 where id_caracter = 9001;

select *
  from player_account
 where id_player = (
   select id_player
     from game_account_caracter
    where id_caracter = 9001
);
--acum face anunt pe plataforma companiei ca l-a gasit si ii spune numele playerului cu caracterul detectat si ii va anunta sentita 
-- regula sentita: daca are contul realizat mai devreme de 01/01/2024 atunci se va afisa "1 luna cont suspendat"
-- daca este mai tarziu decat 01/01/2024 si mai devreme de  01/06/2024 atunci se afiseaza 2 luni 
-- daca este dupa 1/06/2024 si inainte de 30/12/2024 atunci 3 luni
-- daca este mai tarziu atunci trebuie sa isi ceara scuze de atatea ori cat vine pretul itemului furat impartit la 1000;
   set SERVEROUTPUT on
declare
   v_id_player        game_account_caracter.id_player%type;
   v_nume_player      player_account.player_name%type;
   v_data_cont_player player_account.account_creation_date%type;
begin
   select id_player
     into v_id_player
     from player_account
    where id_player = (
      select id_player
        from game_account_caracter
       where id_caracter = 9001
   );

   select player_name
     into v_nume_player
     from player_account
    where id_player = v_id_player;

   dbms_output.put_line('Numele playerului care a folosit cheat cote este chiar: ' || v_nume_player);
   select account_creation_date
     into v_data_cont_player
     from player_account
    where id_player = v_id_player;

   if v_data_cont_player < to_date ( '01/01/2024','dd/mm/yyyy' ) then
      dbms_output.put_line('contul acestui player va fi suspendat 1 luna');
   elsif
      v_data_cont_player > to_date ( '01/01/2024','dd/mm/yyyy' )
      and v_data_cont_player < to_date ( '01/06/2024','dd/mm/yyyy' )
   then
      dbms_output.put_line('contul acestui player va fi suspendat 2 luna');
   elsif
      v_data_cont_player > to_date ( '01/06/2024','dd/mm/yyyy' )
      and v_data_cont_player < to_date ( '01/12/2024','dd/mm/yyyy' )
   then
      dbms_output.put_line('contul acestui player va fi suspendat 3 luna');
   else
      dbms_output.put_line('contul nu va fi suspendat insa va trebui sa isi ceara scuze de cel 9 + 1 bonus si va trebui sa plateasca o amenda firmei de 1000 de monede'
      );
   end if;

  --de aici se vor afisa scuzele pretendentului:
  --modul 1:
   for i in 1..9 loop
      dbms_output.put_line('me sorry, nu mai folosesc cheat codes');
   end loop;
   dbms_output.put_line(' ');
   --2 scuze  bonus :)
   loop
      dbms_output.put_line('me sorry, nu mai folosesc cheat codes');
      exit;
   end loop;
end;


/*Exercise 2:
sa zicem ca un om vrea sa se conecteze la player accounts sau, daca introduce parola gresita de mai mult de trei ori sa se arunce o avertizare
se ia ca parametru de intrare id-ul playerului 
se extrage mail si parola contului din player account 
si se verifica parola*/

   
-- pentru a testa foloseste mail user1@email.com si 1resu ca parola
   set serveroutput on
accept tried_mail prompt 'baga mail'
accept tried_password prompt 'baga parola'
declare
   v_real_mail          player_account.player_email%type;
   v_real_password      player_account.player_password%type;
   v_tried_mail         player_account.player_email%type;
   v_tried_password     player_account.player_password%type;
   v_nume_player_cautat player_account.player_name%type;
   counter              number;
   flag                 number;
begin
   select player_name,
          player_email,
          player_password
     into
      v_nume_player_cautat,
      v_real_mail,
      v_real_password
     from player_account
    where id_player = 151;
   v_tried_mail := '&tried_mail';
   v_tried_password := '&tried_password';
   counter := 1;
   flag := 0;
   while counter <= 3 loop
      if ( v_tried_mail = v_real_mail ) then
         if ( v_tried_password = v_real_password ) then
            flag := 1;
            exit;
         else
            dbms_output.put_line('wrong password');
         end if;
      else
         dbms_output.put_line('wrong mail');
      end if;
      counter := counter + 1;
   end loop;

   if ( flag = 0 ) then
      dbms_output.put_line('account blocked');
   else
      dbms_output.put_line('bine ai revenit '
                           || v_nume_player_cautat
                           || '!');
   end if;
end;


/*Exercitiu 3: 
adding 2 new classes by using plsql */

select *
  from genre;

savepoint before_test;
begin
   for i in 1..2 loop
      insert into genre (
         id_genre,
         genre_name
      ) values ( counter_genre.nextval,
                 'newclass#' || i );
   end loop;
end;

rollback to savepoint before_test;