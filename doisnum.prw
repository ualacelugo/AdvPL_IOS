#include "Protheus.ch"

User Function doisnum()
Local nNum1 := 0
Local nNum2 := 0
Local nTotal := 0
Local cNum1 := ""
Local cNum2 := ""


cnum1 := FWInputBox("Digite aqui o primeiro número:")
cnum2 := FWInputBox("Digite aqui o segundo número:")

nNum1 := Val(cNum1)
nNum2 := Val(cNum2)

nTotal := nNum1 + nNum2

Alert("A soma de "+cValToChar(nNum1)+" + "+cValToChar(nNum2)+" = "+cValToChar(nTotal))
Alert(nTotal)

Return
