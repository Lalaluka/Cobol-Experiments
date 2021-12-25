READ   
       IDENTIFICATION DIVISION.
       PROGRAM-ID. READ.
       
       ENVIRONMENT DIVISION.
           INPUT-OUTPUT SECTION.
               FILE-CONTROL.
               SELECT FENTRY ASSIGN TO 'input.txt'
               ORGANIZATION IS LINE SEQUENTIAL.            

       DATA DIVISION.
           FILE SECTION.
           FD FENTRY.
           01 FENTRY-FILE.
               05 FENTRY-ID PIC 9(5).
               05 NAME PIC A(25).
    
           WORKING-STORAGE SECTION.
           01 WS-FENTRY.
               05 WS-FENTRY-ID PIC 9(5).
               05 WS-NAME PIC A(25).
           01 WS-EOF PIC A(1). 

       PROCEDURE DIVISION.
           OPEN INPUT FENTRY.
               PERFORM UNTIL WS-EOF='Y'
                   READ FENTRY INTO WS-FENTRY
                       AT END MOVE 'Y' TO WS-EOF
                       NOT AT END DISPLAY WS-FENTRY
                   END-READ
               END-PERFORM.
           CLOSE FENTRY.
       STOP RUN.