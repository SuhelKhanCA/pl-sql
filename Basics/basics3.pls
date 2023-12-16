    DECLARE    
    SALARY EMP.SAL % TYPE;  
    ECODE EMP.empno % TYPE;   
    BEGIN     
    Ecode :=&Ecode;  
    Select SAL into SALARY from EMP where EMPNO = ECODE;  
    dbms_output.put_line('Salary of ' || ECODE || 'is = || salary');    
    END;  