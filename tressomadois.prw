#include 'protheus.ch'
/*6. Ler 3 valores (considere que não serão informados valores 
iguais) e escrever a soma dos 2 maiores. 
*/
User Function tressomdoi()
Local nNum1 := val(FWInputBox("Digite o valor 1:"))
Local nNum2 := val(FWInputBox("Digite o valor 2:"))
Local nNum3 := val(FWInputBox("Digite o valor 3:"))
Local soma := 0

If nNum1 > nNum2 .AND. nNum2 > nNum3 
    soma := nNum1 + nNum2

ElseIf nNum2 > nNum1 .AND. nNum3 > nNum1
    soma := nNum2 + nNum3
Else
    soma := nNum3 + nNum1
EndIf
    Alert(soma)
Return