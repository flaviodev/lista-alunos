       IDENTIFICATION DIVISION.
       PROGRAM-ID. ALUNO-ADICIONA-POSICAO-VIEW.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 POSICAO PIC S9(3).
       01 ALUNO PIC X(20).
       01 I PIC 9(3) VALUE 1.
       01 POSICOES-A-MOVER PIC 9(3).
       01 RTN-POSICAO-VALIDA PIC 9(1) VALUE 1.
       01 STATUS-POSICAO PIC X(20) VALUE " ".
       LINKAGE SECTION.
       01 TOTAL-ALUNOS PIC 9(3) VALUE 0.
       01 LISTA.
           05 ALUNOS PIC X(20) OCCURS 20 TIMES.
       SCREEN SECTION.
       01  DATA-ENTRY-SCREEN.
           05  VALUE "ADICIONA ALUNO NA POSICAO" BLANK SCREEN
                                                         LINE 1 COL 10.
           05  VALUE "Informe o nome do aluno:"          LINE 3 COL 10.
           05  ALUNO-INPUT                            LINE 3 COL 35
                           PIC X(20) TO ALUNO.
           05  VALUE "Informe a posicao:"                LINE 4 COL 10.
           05  POSICAO-INPUT                            LINE 4 COL 35
                           PIC XX TO POSICAO.
           05   STATUS-POSICAO-WS                      LINE 5 COL 10
                        PIC X(20) FROM STATUS-POSICAO.

       PROCEDURE DIVISION USING TOTAL-ALUNOS, LISTA.
           PERFORM UNTIL STATUS-POSICAO EQUAL 'OK'
              PERFORM ADICIONA-NA-POSICAO
           END-PERFORM.
           MOVE " " TO STATUS-POSICAO.
           MOVE " " TO ALUNO-INPUT.
           MOVE " " TO POSICAO-INPUT.
       EXIT PROGRAM.

       ADICIONA-NA-POSICAO.
            DISPLAY DATA-ENTRY-SCREEN.
            ACCEPT DATA-ENTRY-SCREEN.
            CALL "ALUNO-ADICIONA-POSICAO" USING ALUNO, POSICAO, 
                    STATUS-POSICAO, TOTAL-ALUNOS, LISTA.
            IF STATUS-POSICAO EQUAL 'OK' THEN
               COMPUTE TOTAL-ALUNOS = TOTAL-ALUNOS - 1
            END-IF.

