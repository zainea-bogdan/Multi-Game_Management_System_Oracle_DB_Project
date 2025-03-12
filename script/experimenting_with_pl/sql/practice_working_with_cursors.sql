select *
  from angajati;

declare
   v_rows_updated number;
begin
   update angajati
      set
      salariul = 1.5 * salariul
    where data_angajare > to_date('01/01/2019','DD/MM/YY');

   if sql%found then
      v_rows_updated := sql%rowcount;
      dbms_output.put_line('Total Rows Updated: ' || v_rows_updated);
   else
      dbms_output.put_line('No records were updated.');
   end if;

end;

rollback;