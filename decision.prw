#include 'Protheus.ch'

User Function decision()
Local nNum1 := FWInputBox("Informe um n�mero")
Local nNum2 := FWInputBox("Informe outro n�mero")

If nNum1 == nNum2
    Alert("Os n�meros s�o iguais")
ElseIf nNum1 > nNum2
    Alert("O primeiro n�mero informado � o maior")
Else
    Alert("O segundo n�mero informado � o maior")
EndIf

return
