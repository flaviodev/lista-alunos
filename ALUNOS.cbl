       IDENTIFICATION DIVISION.
       PROGRAM-ID. ALUNOS.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 OPCAO PIC X VALUE " ".
       01 TOTAL-ALUNOS PIC 9(3) VALUE 0.
       01 LISTA.
           05 ALUNOS PIC x(20) OCCURS 20 TIMES.
       01 I PIC 9(3) VALUE 1.
       01 ALUNO PIC x(20).
       01 POSICAO PIC s9(3).
       01 RTN-BUSCA PIC 9(3) VALUE 0.
       SCREEN SECTION.
       01  DATA-ENTRY-SCREEN.
           05  VALUE "MODULO ALUNOS" BLANK SCREEN         LINE 1 COL 10.
           05  VALUE "Menu"                               LINE 3 COL 10.
           05  VALUE "(0) Listar alunos"                  LINE 4 COL 10.
           05  VALUE "(1) Adicionar aluno"                LINE 5 COL 10.
           05  VALUE "(2) Adicionar aluno na posicao"     LINE 6 COL 10.
           05  VALUE "(3) Remover aluno"                  LINE 7 COL 10.
           05  VALUE "(x) Sair"                           LINE 8 COL 10.
           05  VALUE "OPCAO:"                             LINE 9 COL 30.
           05  RESPONSE-INPUT                             LINE 9 COL 45
                           PIC XX TO OPCAO.

       PROCEDURE DIVISION.
       MAIN.
           PERFORM EXECUTAR.
       STOP RUN.

       ADICIONA-VIEW.
           CALL 'ALUNO-ADICIONA-VIEW' USING TOTAL-ALUNOS, LISTA.

       ADICIONA.
           CALL 'ALUNO-ADICIONA' USING ALUNO, TOTAL-ALUNOS, LISTA.


       ADICIONA-POSICAO.
           CALL 'ALUNO-ADICIONA-POSICAO' USING ALUNO, POSICAO, 
                                    TOTAL-ALUNOS, LISTA.

       ADICIONA-POSICAO-VIEW.
           CALL 'ALUNO-ADICIONA-POSICAO-VIEW' USING TOTAL-ALUNOS, 
                                               LISTA.

       PEGA.
           CALL 'ALUNO-PEGA' USING POSICAO, TOTAL-ALUNOS, LISTA.

       REMOVE.
           CALL 'ALUNO-REMOVE' USING POSICAO, TOTAL-ALUNOS, LISTA.

        REMOVE-VIEW.
           CALL 'ALUNO-REMOVE-VIEW' USING POSICAO, TOTAL-ALUNOS, LISTA.

       IS-CONTEM.
           CALL 'ALUNO-IS-CONTEM' USING  ALUNO, TOTAL-ALUNOS, LISTA,
                                   RTN-BUSCA.

           IF RTN-BUSCA EQUAL 0 THEN
               DISPLAY "Lista de alunos NÃO contém " ALUNO
           ELSE
               DISPLAY "O(a) aluno(a) está posição " RTN-BUSCA
           END-IF.

       MOSTRA.
           CALL 'ALUNO-MOSTRA' USING TOTAL-ALUNOS, LISTA.

       TAMANHO.
           DISPLAY TOTAL-ALUNOS.

       EXECUTAR.
           PERFORM UNTIL OPCAO EQUAL 'x' OR OPCAO EQUAL 'X'
               EVALUATE OPCAO 
                  WHEN '0'
                     PERFORM MOSTRA
                     MOVE ' ' TO OPCAO     
                  WHEN '1'
                     PERFORM ADICIONA-VIEW
                     MOVE ' ' TO OPCAO
                  WHEN '2'
                     PERFORM ADICIONA-POSICAO-VIEW
                     MOVE ' ' TO OPCAO
                  WHEN '3'
                     PERFORM REMOVE-VIEW
                     MOVE ' ' TO OPCAO
                  WHEN OTHER
                     DISPLAY DATA-ENTRY-SCREEN
                     ACCEPT DATA-ENTRY-SCREEN
               END-EVALUATE
           END-PERFORM.



