#include 'Protheus.ch'

User Function decision()
Local nNum1 := FWInputBox("Informe um número")
Local nNum2 := FWInputBox("Informe outro número")

If nNum1 == nNum2
    Alert("Os números são iguais")
ElseIf nNum1 > nNum2
    Alert("O primeiro número informado é o maior")
Else
    Alert("O segundo número informado é o maior")
EndIf

return
