#include 'protheus.ch'

/*1. Criar um array para guardar o nome de 5 alunos, os nomes dever�o ser colocados no array 
depois da declara��o do mesmo, inserindo um valor de cada vez. Exiba o nome do terceiro aluno. 
*/

User Function Ex1Array()
Local aAluno := {}

aAdd(aAluno,{FWInputBox(" Digite o Nome do Aluno: ")})
aAdd(aAluno,{FWInputBox(" Digite o Nome do Aluno: ")})
aAdd(aAluno,{FWInputBox(" Digite o Nome do Aluno: ")})
aAdd(aAluno,{FWInputBox(" Digite o Nome do Aluno: ")})
aAdd(aAluno,{FWInputBox(" Digite o Nome do Aluno: ")})

Alert("Nome do Aluno: " + aAluno[3,1])




Return