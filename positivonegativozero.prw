#include 'protheus.ch'
// Ler um valor e escrever se � positivo, negativo ou zero. 

User Function posNegZero()

Local nValor := Val(FWInputBox("Insira um valor"))

If nValor < 0
    Alert("N�mero negativo")
    ElseIf nValor > 0
        Alert("N�mero Positivo")
Else
    Alert("Zero")
EndIf


Return