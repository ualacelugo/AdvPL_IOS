#include 'protheus.ch'
//Ler dois valores (considere que n�o ser�o lidos valores iguais)e 
//escrever o maior deles. 

User Function maiorvalor()

Local nValor1 := Val(FWInputBox("Insira um n�mero"))
Local nValor2 := Val(FWInputBox("Insira outro n�mero"))

If nValor1 > nValor2
    Alert(nValor1)
Else
    Alert(nValor2)
EndIf

Return 