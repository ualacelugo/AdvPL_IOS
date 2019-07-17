#include 'protheus.ch'
/*3. Criar um array sem tamanho definido e utilizar a função aAdd para adicionar 5 alunos no array, 
sendo que cada aluno deve ter nome, media, idade e profissão. Exiba os dados do quinto aluno. 

 */
User Function AddAluno()
    Local aAluno := {} //Array()

    aAdd(aAluno,{"Amarelo", 7, 87, "Programador Cobol"})
    aAdd(aAluno,{"Lucas 1", 10, 22, "Jogador de CS"})
    aAdd(aAluno,{"Ualace", 2, 30, "Instrutor"})
    aAdd(aAluno,{"Castanhari", 0.10, 23, "Youtuber"})
    aAdd(aAluno,{"Igor", 6, 24, "Do Sul"})

    Alert("Nome do Aluno: " + aAluno[5][1] +;
        " Média: " + cValToChar(aAluno[5][2]) +;
        " Idade: " + cValToChar(aAluno[5][3]) +;
        " Profissão: " + aAluno[5,4])

    VarInfo("Texto Qualquer",aAluno)

Return 