/*1. Crie uma janela com um bot�o de fechar. 
Ao clicar nesse bot�o a janela dever� ser fechada. 
*/
#include 'protheus.ch'

User Function TDialog() 
 // cria di�logo
 Local oDlg := TDialog():New(180,180,550,700,'Exemplo TDialog',,,,,CLR_BLACK,CLR_WHITE,,,.T.)
 // ativa di�logo centralizado
 oDlg:Activate(,,,.T.,{||msgstop('validou!'),.T.},,{||msgstop('iniciando?')} )



Return

