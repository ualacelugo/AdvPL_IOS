#include 'protheus.ch'
/*Fa�a um algoritmo para ler: a descri��o do produto (nome), a quantidade adquirida e o pre�o unit�rio. 
Calcular e escrever o total (total = quantidade adquirida * pre�o unit�rio), 
o desconto e o total a pagar (total a pagar = total - desconto), sabendo-se que: 
- Se quantidade menor ou igual 5 o desconto ser� de 2% 
- Se quantidade maior que 5 e quantidade menor ou igual a 10 o desconto ser� de 3% 
- Se quantidade maior que 10 o desconto ser� de 5% 
*/

User Function desconto()
Local cDesc := FWInputBox("Digite a Descri��o do Produto:")
Local nQuant := Val(FWInputBox("Digite a quantidade:"))
Local nUnit := Val(FWInputBox("Digite o Pre�o Unit�rio:"))
Local nTotal := 0
Local nBruto := 0
Local nDesc := 0

nTotal := nQuant * nUnit
nBruto := nDesc := nTotal

If nQuant <= 5
    nTotal := nTotal - (nTotal * 0.02)
    nDesc *=0.02
    ElseIf nQuant > 5 .AND. nQuant <= 10
    nTotal := nTotal - (nTotal * 0.03)
    nDesc *=0.03
Else
    nTotal := nTotal - (nTotal * 0.05)
    nDesc *=0.05
EndIf

Alert("Produto "+cDesc+" Quantidade "+cValToChar(nQuant)+" Total "+cValToChar(nTotal)+" Desconto "+cValToChar(nDesc)+" Total Bruto "+cValToChar(nBruto))

Return 