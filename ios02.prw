#include 'Protheus.ch'

User Function musica()
Local oBrowse := FWMBrowse():New()

oBrowse:SetAlias("ZA1")
oBrowse:SetMenuDef('ios02')
oBrowse:Activate()

Return

Static Function MenuDef()

Return FWMVCMenu('ios02')

//MVC - Model (Dados e regra de negócio)
//      View (Interface)
//      Controller 


Static Function ModelDef()
Local oModel := MPFormModel():New("Qualquercoisa")
Local oStruZA1 := FWFormStruct(1 , "ZA1")
Local oStruZA2 := FWFormStruct(1 , "ZA2")
//Local bPos := {|oModelField| PosVlmusica(oModelField)}
//Form Field (Campo do Formulário)
oModel:addFields("ZA1MASTER",/* OWNER */, oStruZA1, /* */,/*bPos*/)
oModel:AddGrid('ZA2DETAIL', 'ZA1MASTER', oStruZA2)
oModel:SetRelation('ZA2DETAIL',{{'ZA2_FILIAL',"xFILIAL('ZA2')"},;
{"ZA2_MUSICA" , "ZA1_MUSICA"}}, ZA2->( IndexKey(1)))

oModel:GetModel('ZA1MASTER'):SetDescription('Dados da Musica')
oModel:GetModel('ZA2DETAIL'):SetDescription('Dados do Autor da Musica')
//oStruZA1:RemoveField('ZA0_QTD')
Return oModel

/*Static Function PosVlAutor(oModelField)
Local lTudoOk := .T.    //Sou falso mesmo
Local dFalec := oModelField:GetValue("ZA0_DTAFAL")
//PARA ATRIBUIR VALOR SetValue(Pesquisar : Encapsulamento)
Local cNome := oModelField:GetValue("ZA0_NOME")

If dFalec > Date()
    lTudoOk := .F.
    Help(,,'HELP' ,,'NÃO ADIVINHE O FUTURO',1,0,,,,,, {'COLOQUE UMA DATA VÁLIDA'+ dtoc(date())})

ElseIf 'RICARDO' $ UPPER(cNome) .Or. Empty(cNome)
    lTudoOk := .F.
    HELP(,,'HELP' ,,'Ele não pode estar aqui!!!',1,0,,,,,, {'Coloque um Ricardo Válido'})
Endif
Return lTudoOk
*/
Static Function ViewDef() //0.0
Local oView := FWFormView():New()
Local oStruct := FWFormStruct(2, "ZA1")
Local oStruct2 := FWFormStruct(2, "ZA2")
oView:SetModel(ModelDef()) //return do ModelDef para SetModel
                //ID        ESTRUTURA, ID do Model
oView:addField("ZA1_VIEW", oStruct, "ZA0MASTER")
oView:AddGrid('ZA2_VIEW', oStruct2,'ZA2DETAIL')

// DEFINE CAMPOS QUE TERAO AUTO INCREMENTO
oView:AddIncrementField('ZA2_VIEW', 'ZA2_ITEM')

oView:CreateHorizontalBox("BOXZA1", 50)
oView:CreateHorizontalBox("BOXZA2", 50)

oView:SetOwnerView("ZA1_VIEW","BOXZA1") // Cajuzinho 
oView:SetOwnerView("ZA2_VIEW","BOXZA2") // Cajuzinho 

oView:EnableTitleView('ZA2_VIEW')

Return oView
