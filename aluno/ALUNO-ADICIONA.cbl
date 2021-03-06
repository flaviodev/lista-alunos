       IDENTIFICATION DIVISION.
       PROGRAM-ID. ALUNO-ADICIONA.

       DATA DIVISION.
       LINKAGE SECTION.
       01 ALUNO PIC X(20).
       01 TOTAL-ALUNOS PIC 9(3) VALUE 0.
       01 LISTA.
           05 ALUNOS PIC X(20) OCCURS 20 TIMES.

       PROCEDURE DIVISION USING ALUNO, TOTAL-ALUNOS, LISTA.
            COMPUTE TOTAL-ALUNOS = TOTAL-ALUNOS + 1.
            MOVE ALUNO TO ALUNOS(TOTAL-ALUNOS).
        EXIT PROGRAM.
