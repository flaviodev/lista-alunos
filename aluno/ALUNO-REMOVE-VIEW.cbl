       IDENTIFICATION DIVISION.
       PROGRAM-ID. ALUNO-REMOVE-VIEW.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 RTN-POSICAO-OCUPADA PIC 9(1) VALUE 0.
       01 POSICOES-A-MOVER PIC 9(3).
       01 I PIC 9(3) VALUE 1.
       01 STATUS-POSICAO PIC X(20) VALUE " ".
       LINKAGE SECTION.
       01 POSICAO PIC S9(3).
       01 TOTAL-ALUNOS PIC 9(3) VALUE 0.
       01 LISTA.
           05 ALUNOS PIC X(20) OCCURS 20 TIMES.
       SCREEN SECTION.
       01  DATA-ENTRY-SCREEN.
           05  VALUE "REMOVER ALUNO" BLANK SCREEN LINE 1 COL 10.
           05  VALUE "-----------------------"                        
                  LINE 3 COL 10.       
           05  VALUE "1"                              LINE 4 COL 7.
           05  ALUNO1-IN                              LINE 4 COL 10
                PIC X(20)        FROM ALUNOS(1).           
           05  VALUE "2"                              LINE 5 COL 7.
           05  ALUNO2-IN                              LINE 5 COL 10
                PIC X(20)        FROM ALUNOS(2).           
           05  VALUE "3"                              LINE 6 COL 7.
           05  ALUNO3-IN                              LINE 6 COL 10
                PIC X(20)        FROM ALUNOS(3).           
           05  VALUE "4"                              LINE 7 COL 7.
           05  ALUNO4-IN                              LINE 7 COL 10
                PIC X(20)        FROM ALUNOS(4).           
           05  VALUE "5"                              LINE 8 COL 7.
           05  ALUNO5-IN                              LINE 8 COL 10
                PIC X(20)        FROM ALUNOS(5).           
           05  VALUE "6"                              LINE 9 COL 7.
           05  ALUNO6-IN                              LINE 9 COL 10
                PIC X(20)        FROM ALUNOS(6).           
           05  VALUE "7"                              LINE 10 COL 7.
           05  ALUNO7-IN                              LINE 10 COL 10
                PIC X(20)        FROM ALUNOS(7).           
           05  VALUE "8"                              LINE 11 COL 7.
           05  ALUNO8-IN                              LINE 11 COL 10
                PIC X(20)        FROM ALUNOS(8).           
           05  VALUE "9"                              LINE 12 COL 7.
           05  ALUNO9-IN                              LINE 12 COL 10
                PIC X(20)        FROM ALUNOS(9).           
           05  VALUE "10"                             LINE 13 COL 7.
           05  ALUNO10-IN                             LINE 13 COL 10
                PIC X(20)        FROM ALUNOS(10).           
           05  VALUE "11"                             LINE 14 COL 7.
           05  ALUNO11-IN                             LINE 14 COL 10
                PIC X(20)        FROM ALUNOS(11).           
           05  VALUE "12"                             LINE 15 COL 7.
           05  ALUNO12-IN                             LINE 15 COL 10
                PIC X(20)        FROM ALUNOS(12).           
           05  VALUE "13"                             LINE 16 COL 7.
           05  ALUNO13-IN                             LINE 16 COL 10
                PIC X(20)        FROM ALUNOS(13).           
           05  VALUE "14"                             LINE 17 COL 7.
           05  ALUNO14-IN                             LINE 17 COL 10
                PIC X(20)        FROM ALUNOS(14).           
           05  VALUE "15"                             LINE 18 COL 7.
           05  ALUNO15-IN                             LINE 18 COL 10
                PIC X(20)        FROM ALUNOS(15).           
           05  VALUE "16"                             LINE 19 COL 7.
           05  ALUNO16-IN                             LINE 19 COL 10
                PIC X(20)        FROM ALUNOS(16).           
           05  VALUE "17"                             LINE 20 COL 7.
           05  ALUNO17-IN                             LINE 20 COL 10
                PIC X(20)        FROM ALUNOS(17).           
           05  VALUE "18"                             LINE 21 COL 7.
           05  ALUNO18-IN                             LINE 21 COL 10
                PIC X(20)        FROM ALUNOS(18).           
           05  VALUE "19"                             LINE 22 COL 7.
           05  ALUNO19-IN                             LINE 22 COL 10
                PIC X(20)        FROM ALUNOS(19).           
           05  VALUE "20"                             LINE 23 COL 7.
           05  ALUNO20-IN                             LINE 23 COL 10
                PIC X(20)        FROM ALUNOS(20).           
           05  VALUE "Informe a posicao:"              LINE 24 COL 10.
           05  POSICAO-INPUT                           LINE 24 COL 35
                           PIC XX TO POSICAO.
           05   STATUS-POSICAO-WS                      LINE 25 COL 10
                           PIC X(20) FROM STATUS-POSICAO.



       PROCEDURE DIVISION USING POSICAO, TOTAL-ALUNOS, LISTA.
           PERFORM UNTIL STATUS-POSICAO EQUAL 'OK'
              PERFORM REMOVE
           END-PERFORM.
           MOVE " " TO STATUS-POSICAO.
           MOVE " " TO POSICAO-INPUT.
       EXIT PROGRAM.

       REMOVE.
        DISPLAY DATA-ENTRY-SCREEN.
        ACCEPT DATA-ENTRY-SCREEN.
        CALL "ALUNO-REMOVE" USING POSICAO, 
                STATUS-POSICAO, TOTAL-ALUNOS, LISTA.
