000100    
000200 IDENTIFICATION DIVISION.
       PROGRAM-ID. MUL.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 Num_1 PIC 9(1).
       77 Num_2 PIC 9(1).
       77 solution PIC 9(3).
       PROCEDURE DIVISION.
       PARA.
       DISPLAY "First single Digit Number".
       ACCEPT NUM_1.
       DISPLAY "Second number: ".
       ACCEPT NUM_2.
       COMPUTE solution = NUM_1 * NUM_2.
       DISPLAY "Product: " solution.
       STOP RUN.
       