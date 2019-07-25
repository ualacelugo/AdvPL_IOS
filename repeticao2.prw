#include 'protheus.ch'
/*2) Escreva um algoritmo para ler as notas da 1a. e 2a. avaliações de um aluno, 
calcule e imprima a média (simples) desse aluno.
Só devem ser aceitos valores válidos durante a leitura (0 a 10) para cada nota. 
*/

User Function notamedia()
Local nNota1 := Val(FWInputBox("Digite a primeira nota:"))
Local nNota2 := Val(FWInputBox("Digite a segunda nota:"))
Local media

While (nNota1 < 0 .OR. nNota1 > 10)
    nNota1 := Val(FWInputBox("Digite a primeira nota:"))   
End
While (nNota2 < 0 .OR. nNota2 > 10)
   nNota2 := Val(FWInputBox("Digite a segunda nota:"))   
End
media := (nNota1+nNota2)/2

Alert(media)
Return 