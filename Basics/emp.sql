create table emp (  
  empno   number not null,  
  salary	number    
);

insert into emp values(100, 5000);
insert into emp values(200, 6000);
insert into emp values(300, 7000);


   DECLARE    
    SAL EMP.Salary%TYPE;  
    ECODE EMP.empno%TYPE;   
BEGIN     
    Ecode :=100;  
    Select Salary into SAL from EMP where EMPNO = ECODE;  
    dbms_output.put_line('Salary of ' || ECODE || ' is = || salary: ' || sal);    
END; 