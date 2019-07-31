#include 'Protheus.ch'

User Function autor()
Local oBrowse := FWMBrowse():New()

oBrowse:SetAlias("ZA0")
oBrowse:SetMenuDef('ios01')
oBrowse:Activate()

Return

Static Function MenuDef()

Return FWMVCMenu('ios01')

//MVC - Model (Dados e regra de negócio)
//      View (Interface)
//      Controller 


Static Function ModelDef()
Local oModel := MPFormModel():New("Qualquercoisa")
Local oStruZA0 := FWFormStruct(1 , "ZA0")
Local bPos := {|oModelField| PosVlAutor(oModelField)}
//Form Field (Campo do Formulário)


oModel:addFields("ZA0MASTER",/* OWNER */, oStruZA0, /* */,bPos)

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
Endif*/
Return

Static Function ViewDef() //0.0
Local oView := FWFormView():New()
Local oStruct := FWFormStruct(2, "ZA0")
oView:SetModel(ModelDef()) //return do ModelDef para SetModel
                //ID        ESTRUTURA, ID do Model
oView:addField("ZA0_VIEW", oStruct, "ZA0MASTER")
oView:CreateHorizontalBox("BOXZA0", 100)
oView:SetOwnerView("ZA0_VIEW","BOXZA0") // Cajuzinho 

Return oView
