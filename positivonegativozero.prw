#include 'protheus.ch'
// Ler um valor e escrever se é positivo, negativo ou zero. 

User Function posNegZero()

Local nValor := Val(FWInputBox("Insira um valor"))

If nValor < 0
    Alert("Número negativo")
    ElseIf nValor > 0
        Alert("Número Positivo")
Else
    Alert("Zero")
EndIf


Return