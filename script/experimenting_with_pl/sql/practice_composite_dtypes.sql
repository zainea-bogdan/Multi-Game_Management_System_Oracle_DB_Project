/*basically PL/SQL records are like structures in C that contain the data in a specific content, which has cells with the same datatype as the original table*/
/*to access them, i need to use like in C the struct.attribute*/


/*poti sa declari si cu type ca sa iti faci acel sturcut si trebuie sa initialiezzi o variabila de acel typ declarat pe care mai apoi sa o folosesti in plsql, si cand faci specific cu anumite coloane tre sa fi atent la select */
--testing it
declare
--    r_angajati angajati%rowtype;
   type r_angajati is record (
         id_angajat angajati.id_angajat%type,
         nume       angajati.nume%type,
         prenume    angajati.prenume%type
   );
   t_angajati r_angajati;
begin
   select id_angajat,
          nume,
          prenume
     into t_angajati
     from angajati
    where id_angajat = 198;

   dbms_output.put_line(t_angajati.nume
                        || ' '
                        || t_angajati.prenume
                        || ' '
                        || t_angajati.id_angajat);
end;

/*================================================================*/

create table ex_angajati
   as
      select *
        from angajati
       where 1 = 2;

select *
  from ex_angajati;

declare
   r_angajati angajati%rowtype;
begin
   select *
     into r_angajati
     from angajati
    where id_angajat = 100;


   insert into ex_angajati values r_angajati;
end;


/* collections: narray,varray adn table*/

/*folosim comanda extends pentru a extinde slotul din colectie cu inca un record*/
/*folosim functia count ca sa calculam cate inregistrari are aceasta colectie*/
/

declare
   type lista_supermario is
      table of varchar2(50);
   l_bros lista_supermario;
begin
   l_bros := lista_supermario(
      'luigi',
      'mario',
      'papa',
      'mama'
   );
   l_bros.extend;
   l_bros(5) := 'bebe';
   for i in 1..l_bros.count() loop
      dbms_output.put_line(l_bros(i));
   end loop;
end;
/

declare
   type numele_ang is
      table of angajati.nume%type;
   l_ang numele_ang;
   idx   pls_integer := 1;
begin
   l_ang := numele_ang();
   for i in 100..110 loop
      l_ang.extend;
      select nume
        into
         l_ang
      (idx)
        from angajati
       where id_angajat = i;
      idx := idx + 1;
   end loop;

   for i in 1..l_ang.count() loop
      dbms_output.put_line(l_ang(i));
   end loop;


end;

select *
  from angajati
 order by id_angajat asc;