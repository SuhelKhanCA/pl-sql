--SAMPLE CURSOR PROGRAM
DECLARE

   CURSOR students_cursor IS
   SELECT * from students;
   v_student students_cursor%rowtype;
  /* instead we could do v_student students%rowtype */
BEGIN
   DBMS_OUTPUT.PUT_LINE ('******************');
   OPEN students_cursor;
   FETCH students_cursor into v_student;
  WHILE students_cursor%found LOOP
      DBMS_OUTPUT.PUT_LINE (v_student.last);   
      DBMS_OUTPUT.PUT_LINE (v_student.major);
      DBMS_OUTPUT.PUT_LINE ('******************');
     FETCH students_cursor into v_student;
   END LOOP;
CLOSE students_cursor;
END;