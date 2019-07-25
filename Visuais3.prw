/*3. Crie uma janela que exiba 4 componentes de Get para solicitar os seguintes 
campos: Nome, idade, endereço e profissão. 
Coloque um componente de Checkbox para definir se o 
cadastro estará ativo ou inativo, um botão para confirmar o cadastro e um 
botão para cancelar o cadastro. O botão de confirmar deve coletar e exibir todos os dados informados. 
O botão de cancelar deve fechar a janela. 
*/
#include 'protheus.ch'

User Function TDialog() 
 // cria diálogo
 Local oDlg := TDialog():New(180,180,550,700,'Exemplo TDialog',,,,,CLR_BLACK,CLR_WHITE,,,.T.)
 // ativa diálogo centralizado
 oDlg:Activate(,,,.T.,{||msgstop('validou!'),.T.},,{||msgstop('iniciando?')} )



Return

