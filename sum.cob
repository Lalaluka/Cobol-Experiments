HELLO
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ADDITION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 NUM_1 PIC 9(5).
       77 NUM_2 PIC 9(5).
       77 SOLVE_SUM PIC 9(5).
       PROCEDURE DIVISION.
       PARA.
       DISPLAY "First number: ".
       ACCEPT NUM_1.
       DISPLAY "Second number: ".
       ACCEPT NUM_2.
       COMPUTE SOLVE_SUM = NUM_1 + NUM_2.
       DISPLAY "Sum: " SOLVE_SUM.
       STOP RUN.
