    DECLARE    
    EMPLOYEE EMP. % ROW TYPE;  
    BEGIN     
    EMPLOYEE.EMPNO := 2092;  
    5   EMPLOYEE.ENAME := 'Sanju';  
    Insert into EMP where (EMPNO, ENAME) Values (employee.empno, employee.ename);  
    dbms_output.put_line('Row Inserted');    
    END;  