#include 'protheus.ch'

/*5. Crie um array para guardar o nome dos alunos dessa sala, 
usando o aAdd adicione o nome de 10 alunos. 
Depois disso, exclua 5 alunos do array usando a função aDel 
e use a função aSize pra redimensionar o tamanho de forma a não 
sobrar nenhuma posição com o conteúdo NIL.
*/

User Function Ex5Array()
Local aAluno := {}
Local nX

aAdd(aAluno,{"Juh"})
aAdd(aAluno,{"Amarelo"})
aAdd(aAluno,{"Lucao"})
aAdd(aAluno,{"Igor"})
aAdd(aAluno,{"Rerick"})
aAdd(aAluno,{"Juh2"})
aAdd(aAluno,{"Amarelo2"})
aAdd(aAluno,{"Lucao2"})
aAdd(aAluno,{"Igor2"})
aAdd(aAluno,{"Rerick2"})


For nX:= 1 to 3
aDel(aAluno, nX)
    
Next

aSize(aAluno,7)
varInfo("alunos",aAluno)

Return