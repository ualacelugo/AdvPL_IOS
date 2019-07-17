#include 'protheus.ch'

/*2. Criar um array de 3 linhas e 2 colunas, 
cada linha deve guardar o nome de um aluno e a idade do mesmo.
Exiba os dados do segundo aluno. 

*/

User Function Ex2Array()
Local aAluno := Array(3,2)

aAluno[1] := {"Mano", 100}
aAluno[2] := {"Mano1", 101}
aAluno[3] := {"Mano2", 102}

Alert("Nome do Aluno: " + aAluno[2,1] +;
    " Nota do Aluno: " + cValToChar(aAluno[2,2]))

Return