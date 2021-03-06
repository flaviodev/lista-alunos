       IDENTIFICATION DIVISION.
       PROGRAM-ID. ALUNO-ADICIONA-POSICAO.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 I PIC 9(3) VALUE 1.
       01 POSICOES-A-MOVER PIC 9(3).
       01 RTN-POSICAO-VALIDA PIC 9(1) VALUE 1.
       LINKAGE SECTION.
       01 ALUNO PIC X(20).
       01 POSICAO PIC S9(3).
       01 STATUS-POSICAO PIC X(20).
       01 TOTAL-ALUNOS PIC 9(3) VALUE 0.
       01 LISTA.
           05 ALUNOS PIC X(20) OCCURS 20 TIMES.

       PROCEDURE DIVISION USING ALUNO, POSICAO, 
                    STATUS-POSICAO, TOTAL-ALUNOS, LISTA.
           PERFORM ADICIONA-NA-POSICAO
       EXIT PROGRAM.

       ADICIONA-NA-POSICAO.
           COMPUTE TOTAL-ALUNOS = TOTAL-ALUNOS + 1.
           PERFORM IS-POSICAO-VALIDA.
           IF RTN-POSICAO-VALIDA EQUAL 1 THEN
               COMPUTE I = TOTAL-ALUNOS
               COMPUTE POSICOES-A-MOVER = TOTAL-ALUNOS - POSICAO + 1
               PERFORM POSICOES-A-MOVER TIMES
                   MOVE ALUNOS(I) TO ALUNOS(I + 1)
                   COMPUTE I = I - 1
               END-PERFORM
               MOVE ALUNO TO ALUNOS(POSICAO)
               COMPUTE TOTAL-ALUNOS = TOTAL-ALUNOS + 1
               MOVE "OK" TO STATUS-POSICAO
           ELSE
               MOVE "posicao invalida!" TO STATUS-POSICAO
           END-IF.

       IS-POSICAO-VALIDA.
           IF POSICAO >= 1 AND POSICAO <= TOTAL-ALUNOS + 1 THEN
              COMPUTE RTN-POSICAO-VALIDA = 1
           ELSE
              COMPUTE RTN-POSICAO-VALIDA = 0
           END-IF.
