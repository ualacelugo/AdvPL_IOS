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

varInfo("alunos",aAluno[2])

Return