#include "Protheus.ch"

User Function provaspeso()
Local nP1 := 0
Local nP2 := 0
Local nPl := 0
Local cP1 := ""
Local cP2 := ""
Local cP3 := ""
Local nTotal := 0


cP1 := FWInputBox("Digite aqui a primeira nota:")
cP2 := FWInputBox("Digite aqui a segunda nota:")
cP3 := FWInputBox("Digite aqui a segunda nota:")

nP1 := Val(cP1)
nP2 := Val(cP2)
nP3 := Val(cP3)

nTotal := ((nP1*2) + (nP2*3) + (nP3*5))/10

Alert("A Média é: "+cValToChar(nTotal))

Return

