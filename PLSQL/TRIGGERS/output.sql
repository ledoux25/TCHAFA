create or replace trigger monTrigger2
 after  
    update on employee
   begin 
      dbms_output.put_line('OK');
   end; 
 /