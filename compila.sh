cp *.cbl bin
cp aluno/*.cbl bin

cd bin

cobc ALUNO-IS-CONTEM.cbl
cobc ALUNO-IS-POSICAO-OCUPADA.cbl
cobc ALUNO-PEGA.cbl
cobc ALUNO-REMOVE.cbl
cobc ALUNO-REMOVE-VIEW.cbl
cobc ALUNO-ADICIONA-POSICAO.cbl
cobc ALUNO-ADICIONA-POSICAO-VIEW.cbl
cobc ALUNO-ADICIONA.cbl
cobc ALUNO-ADICIONA-VIEW.cbl
cobc ALUNO-MOSTRA.cbl
cobc -x  ALUNOS.cbl

rm *.cbl 


