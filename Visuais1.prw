/*1. Crie uma janela com um botão de fechar. 
Ao clicar nesse botão a janela deverá ser fechada. 
*/
#include 'protheus.ch'

User Function TDialog() 
 // cria diálogo
 Local oDlg := TDialog():New(180,180,550,700,'Exemplo TDialog',,,,,CLR_BLACK,CLR_WHITE,,,.T.)
 // ativa diálogo centralizado
 oDlg:Activate(,,,.T.,{||msgstop('validou!'),.T.},,{||msgstop('iniciando?')} )



Return

