#include 'protheus.ch'
/* 3) Acrescente uma mensagem 'NOVO C�LCULO (S/N)?' 
ao final do exerc�cio anterior. 
Se for respondido 'S' deve retornar e executar um novo c�lculo, 
caso contr�rio dever� encerrar o algoritmo. 
*/

User Function NotaMediaS()
Local nNota1 := Val(FWInputBox("Digite a primeira nota:"))
Local nNota2 := Val(FWInputBox("Digite a segunda nota:"))
Local cConfirm
Local media

While (nNota1 < 0 .OR. nNota1 > 10)
    nNota1 := Val(FWInputBox("Digite a primeira nota:"))   
End
While (nNota2 < 0 .OR. nNota2 > 10)
   nNota2 := Val(FWInputBox("Digite a segunda nota:"))   
End
media := (nNota1+nNota2)/2

Alert(media)

cConfirm := FWInputBox("NOVO C�LCULO (S/N)?")

While (cConfirm == "S")
While (nNota1 < 0 .OR. nNota1 > 10)
    nNota1 := Val(FWInputBox("Digite a primeira nota:"))   
End
While (nNota2 < 0 .OR. nNota2 > 10)
   nNota2 := Val(FWInputBox("Digite a segunda nota:"))   
End
media := (nNota1+nNota2)/2

Alert(media)
    


Return 