#include 'protheus.ch'

/*4. Crie um array com três linhas. 
Em cada linha deve-se ter o nome do aluno e um outro array, 
pra guardar 4 notas de prova. Popule o array inteiro. 
Exiba o nome e as notas do segundo aluno. 

*/

User Function Ex4Array()
Local aAluno := Array(3,2)

aAluno[1] := {"Mano", {1,2,3,4}}
aAluno[2] := {"Mano1", {1,2,3,4}}
aAluno[3] := {"Mano2", {1,2,3,4}}

Alert("Nome do Aluno: " + aAluno[2,1] +;
    " Nota1 do Aluno: " + cValToChar(aAluno[2][1,1])+;
    " Nota2 do Aluno: " + cValToChar(aAluno[2][1,2])+;
    " Nota3 do Aluno: " + cValToChar(aAluno[2][1,3])+;
    " Nota4 do Aluno: " + cValToChar(aAluno[2][1,4]))

Return