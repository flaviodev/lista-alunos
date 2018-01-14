       IDENTIFICATION DIVISION.
       PROGRAM-ID. ALUNO-MOSTRA.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 OPCAO PIC X VALUE " ".
       01 I PIC 9(3) VALUE 1.
       01 CUR PIC 9(3) VALUE 4.
       01 LISTA-WS.
           05 ALUNOS-WS PIC X(20) OCCURS 20 TIMES.
       LINKAGE SECTION.
       01 TOTAL-ALUNOS PIC 9(3) VALUE 0.
       01 LISTA.
           05 ALUNOS PIC X(20) OCCURS 20 TIMES.
       SCREEN SECTION.
       01  DATA-ENTRY-SCREEN.
           05  VALUE "LISTAR ALUNOS" BLANK SCREEN     LINE 1 COL 10.
           05  VALUE "-----------------------"                        
                  LINE 3 COL 10.       
           05  ALUNO1-IN                              LINE 4 COL 10
                PIC X(20)        FROM ALUNOS(1).           
           05  ALUNO2-IN                              LINE 5 COL 10
                PIC X(20)        FROM ALUNOS(2).           
           05  ALUNO3-IN                              LINE 6 COL 10
                PIC X(20)        FROM ALUNOS(3).           
           05  ALUNO4-IN                              LINE 7 COL 10
                PIC X(20)        FROM ALUNOS(4).           
           05  ALUNO5-IN                              LINE 8 COL 10
                PIC X(20)        FROM ALUNOS(5).           
           05  ALUNO6-IN                              LINE 9 COL 10
                PIC X(20)        FROM ALUNOS(6).           
           05  ALUNO7-IN                              LINE 10 COL 10
                PIC X(20)        FROM ALUNOS(7).           
           05  ALUNO8-IN                              LINE 11 COL 10
                PIC X(20)        FROM ALUNOS(8).           
           05  ALUNO9-IN                              LINE 12 COL 10
                PIC X(20)        FROM ALUNOS(9).           
           05  ALUNO10-IN                             LINE 13 COL 10
                PIC X(20)        FROM ALUNOS(10).           
           05  ALUNO11-IN                             LINE 14 COL 10
                PIC X(20)        FROM ALUNOS(11).           
           05  ALUNO12-IN                             LINE 15 COL 10
                PIC X(20)        FROM ALUNOS(12).           
           05  ALUNO13-IN                             LINE 16 COL 10
                PIC X(20)        FROM ALUNOS(13).           
           05  ALUNO14-IN                             LINE 17 COL 10
                PIC X(20)        FROM ALUNOS(14).           
           05  ALUNO15-IN                             LINE 18 COL 10
                PIC X(20)        FROM ALUNOS(15).           
           05  ALUNO16-IN                             LINE 19 COL 10
                PIC X(20)        FROM ALUNOS(16).           
           05  ALUNO17-IN                             LINE 20 COL 10
                PIC X(20)        FROM ALUNOS(17).           
           05  ALUNO18-IN                             LINE 21 COL 10
                PIC X(20)        FROM ALUNOS(18).           
           05  ALUNO19-IN                             LINE 22 COL 10
                PIC X(20)        FROM ALUNOS(19).           
           05  ALUNO20-IN                             LINE 23 COL 10
                PIC X(20)        FROM ALUNOS(20).           
           05  VALUE "(x) Sair"                       LINE 24  COL 10.
           05  VALUE "OPCAO:"                         LINE 25  COL 30.
           05  RESPONSE-INPUT                         LINE 25  COL 45
                           PIC X TO OPCAO.           

       PROCEDURE DIVISION USING TOTAL-ALUNOS, LISTA.
           PERFORM UNTIL OPCAO EQUAL 'x' OR OPCAO EQUAL 'X'
               DISPLAY DATA-ENTRY-SCREEN
               ACCEPT DATA-ENTRY-SCREEN
           END-PERFORM.
           MOVE ' ' TO OPCAO.
       EXIT PROGRAM.
