HELLO
       IDENTIFICATION DIVISION.
       PROGRAM-ID. IsPrime.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUM PIC 9(3).
       01 NUM1 PIC 9(3).
       01 R PIC 9(3).
       01 Q PIC 9(3).
       PROCEDURE DIVISION.
       DISPLAY "ENTER N VALUE".
       ACCEPT NUM.
       IF NUM = 1 OR NUM = 0
           DISPLAY NUM " is NOT PRIME"
           STOP RUN
       END-IF.
       PERFORM VARYING NUM1 FROM 2 BY 1
           UNTIL NUM1 GREATER THAN OR EQUAL TO NUM
           DIVIDE NUM BY NUM1 GIVING Q REMAINDER R
           IF R=0
               DISPLAY NUM " is not PRIME"
               STOP RUN
           END-IF
       END-PERFORM.
       DISPLAY NUM " is PRIME"
       STOP RUN.
