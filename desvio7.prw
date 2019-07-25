//7. Ler 3 valores (considere que não serão informados valores 
//iguais)e escrevê-los em ordem crescente. 

User Function oredem3()
Local nNum1 := val(FWInputBox("Digite o valor 1:"))
Local nNum2 := val(FWInputBox("Digite o valor 2:"))
Local nNum3 := val(FWInputBox("Digite o valor 3:"))

If nNum1 < nNum2 .AND. nNum2 < nNum3 
    Alert(cvalToChar(nNum1)+" "+cvalToChar(nNum2)+" "+cvalToChar(nNum3))    
ElseIf nNum2 < nNum1 .AND. nNum3 < nNum1
    Alert(cvalToChar(nNum2)+" "+cvalToChar(nNum3)+" "+cvalToChar(nNum1))
Else
    Alert(cvalToChar(nNum3)+" "+cvalToChar(nNum2)+" "+cvalToChar(nNum1))
EndIf
    
Return