create or replace trigger toko
 after  
    update on utilisateurs
   begin 
      dbms_output.put_line('OK');
   end; 
 /