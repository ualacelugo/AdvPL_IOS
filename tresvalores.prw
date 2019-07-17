#include 'protheus.ch'
//Ler 3 valores (considere que não serão informados valores 
//iguais)e escrever o maior deles. 


User Function tresval()
Local nNum1 := val(FWInputBox("Digite o valor 1:"))
Local nNum2 := val(FWInputBox("Digite o valor 2:"))
Local nNum3 := val(FWInputBox("Digite o valor 3:"))

If nNum1 > nNum2 .AND. nNum1 > nNum3
    alert("O maior valor é: "+cValToChar(nNum1))
    ElseIf nNum2 > nNum3 .AND. nNum2 > nNum3
        alert("O maior valor é: "+cValToChar(nNum2))
Else 
    alert("O maior valor é: "+cValToChar(nNum3))
EndIf


Return 