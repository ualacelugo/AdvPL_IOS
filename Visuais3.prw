/*3. Crie uma janela que exiba 4 componentes de Get para solicitar os seguintes 
campos: Nome, idade, endere�o e profiss�o. 
Coloque um componente de Checkbox para definir se o 
cadastro estar� ativo ou inativo, um bot�o para confirmar o cadastro e um 
bot�o para cancelar o cadastro. O bot�o de confirmar deve coletar e exibir todos os dados informados. 
O bot�o de cancelar deve fechar a janela. 
*/
#include 'protheus.ch'

User Function TDialog() 
 // cria di�logo
 Local oDlg := TDialog():New(180,180,550,700,'Exemplo TDialog',,,,,CLR_BLACK,CLR_WHITE,,,.T.)
 // ativa di�logo centralizado
 oDlg:Activate(,,,.T.,{||msgstop('validou!'),.T.},,{||msgstop('iniciando?')} )



Return

