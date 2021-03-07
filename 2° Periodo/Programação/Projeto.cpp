#include <iostream>
#include <string.h>

using namespace std;
main()
{
    int a=0, b=0, c=1, i=1, op, op1, op2, op3, vt, vt1, cont=1, cont1=1, IDesc, resp1, resp2, resp3, resp4, resp5, resp6, resp7;
    struct CURSO
	{
		int ID_CURSO;
		char NOMECURSO[50];
		int DEL;
	} C[1000];
	struct ALUNOS
	{
		int MATRICULA;
		char NOME[50];
		char SEXO[10];
		char DATA_MATRICULA[10];
		int DEL;
		char DATA_NASCIMENTO[10];
		struct CURSO C;
		int ID;
		int VETOR;
	} A[1000];
	do{
        cout <<" \n";
		cout <<"1 - Inclusao CURSO"<<endl;
		cout <<"2 - Consulta CURSO"<<endl;
		cout <<"3 - Alteracao CURSO"<<endl;
		cout <<"4 - Exclusao CURSO"<<endl;
		cout <<"5 - Listagem CURSO"<<endl;
		cout <<"6 - Inclusao ALUNOS"<<endl;
		cout <<"7 - Consulta ALUNOS"<<endl;
		cout <<"8 - Alteracao ALUNOS"<<endl;
		cout <<"9 - Exclusao ALUNOS"<<endl;
		cout <<"10 - Listagem ALUNOS"<<endl;
		cout <<"11 - Sair"<<endl;
		cout <<" \n";
		cin >> op;
		if(op == 1)
		{
			do{
				cout << "\n";
				C[a].ID_CURSO=i; /* Usei o nome coluna em vez de vetor para se parece mais com um banco de dados */
				cout << "A coluna " << a << " de CURSO possui o ID " << C[a].ID_CURSO << endl; /* Eu coloquei o campo ID como auto increment já para não haver IDs iguais a zero ou repetição  */
				cout << "\n";
				cout << "Digite o nome do curso para coluna " << a << ": ";
				scanf(" %[^\n]s", C[a].NOMECURSO);  /* Utilzei esse comando em vez de gets() mas ele faz a mesma coisa */ 
				C[a].DEL=0;
				i=i+1;
				a=a+1;
				cont=cont+1;
				cout << "\n";
				cout << "Deseja armazenar mais alguma coluna em CURSO? (Sim=1 / Nao=0)" << endl;  
				cin >> op1;
			}while(op1!=0);
		}
		else if(op == 2)
		{
			cout << "\n" ;
			cout << "Deseja consultar qual coluna de CURSO? ";
			cin >> resp2;
			cout << "\n" ;
			if(resp2<a || resp2 ==0)
			{
				cout << "A coluna " << resp2 << " contem as seguintes informacoes: " << endl;
				cout << "ID: " << C[resp2].ID_CURSO << endl;
				cout << "Nome do curso: " << C[resp2].NOMECURSO << endl;
				cout << "DEL: " << C[resp2].DEL << endl;
			}
			else
			{
				cout << "Essa nao e uma coluna valida em CURSO! ";
				cout << "\n" ;
			}
		}
		else if(op == 3)
		{
			cout << "\n" ;
			cout << "Deseja alterar qual coluna de CURSO? ";
			cin >> resp3;
			cout << "\n" ;
			if(resp3<a || resp3 ==0)
			{
				if(C[resp3].DEL==1)
				{
					cout << "Nao e possivel alterar essa coluna pois ela ja foi excluida!" << endl;
				}
				else
				{
					cout << "Digite o nome do curso para o do ID " << C[resp3].ID_CURSO << ": ";
					scanf(" %[^\n]s", C[resp3].NOMECURSO); 
				}
			}
			else
			{
				cout << "Essa nao e uma coluna valida em CURSO! ";
				cout << "\n" ;
			}
		}	
		else if(op == 4)
		{
			cout << "\n";
			cout << "Deseja excluir qual coluna de CURSO? ";
			cin >> resp4;
			cout << "\n" ;
			if((resp4<a && A[resp4].VETOR!=resp4) && C[resp4].DEL==0)
			{
				cout << "Digite 1 para exclui as informacoes dessa coluna ou 0 para manter: ";
				cin >> vt;
				if(vt==0)
				{
					cout << "\n";
					cout << "As informacoes dessa coluna foram mantidos!";
					cout << "\n";
				}
				else if(vt==1)
				{
					cout << "\n";
					cout << "As informacoes dessa coluna foram excluidas!";
					cout << "\n";
					C[resp4].DEL=1;
				}
				else
				{
					cout << "\n";
					cout << "Numero invalido! digite 0 ou 1";
					cout << "\n";
				}
			}
			else
			{
				cout << "Essa nao e uma coluna valida em CURSO ou ja esta associado a algum registro de ALUNOS!";
				cout << "\n" ;
			}
		}		
		else if(op == 5)
		{
			for(a=0;a<cont-1;a++)
			{
				cout << "\n";
				cout << "Informacoes da coluna " << a << " CURSO" << endl;
				cout << "ID: " << C[a].ID_CURSO << endl;
				cout << "Nome do curso: " << C[a].NOMECURSO << endl;
				cout << "DEL: " << C[a].DEL << endl;
			}
		}	
		else if(op == 6)
		{
			do{
				cout << "\n"; 
				A[b].MATRICULA=c;
				cout << "A coluna " << b << " de ALUNO possui a matricula " << A[b].MATRICULA << endl; /* Eu coloquei o campo MATRICULA como auto increment já para não haver matriculas iguais a zero ou repetição  */
				cout << "\n";
				cout << "Digite seu nome: ";
				scanf(" %[^\n]s", A[b].NOME); 
				cout << "Digite seu sexo (M=Masculino / F=Feminino): ";
				scanf(" %[^\n]s", A[b].SEXO); 
				cout << "Digite sua data de nascimento: ";
				scanf(" %[^\n]s", A[b].DATA_NASCIMENTO); 
				cout << "Digite a data de matricula: ";
				scanf(" %[^\n]s", A[b].DATA_MATRICULA); 
				cout << "Digite a coluna em CURSO que esta o ID do seu curso: ";
				cin >> IDesc;
				A[b].ID=IDesc;
				if(A[b].ID>a-1 || C[A[b].ID].DEL==1)
				{
					do{
						cout << "Esta nao e uma coluna valida em CURSO ou foi excluida. Por favor digite uma coluna valida!" << endl;
						cout << "\n";
						cin >> A[b].ID;
					}while(C[A[b].ID].DEL==1 || A[b].ID>a-1);
				}
				A[b].ID=C[A[b].ID].ID_CURSO;
				A[IDesc].VETOR=IDesc;
				A[b].DEL=0;
				b=b+1;
				cont1=cont1+1;
				c=c+1;
				cout << "\n";
				cout << "Deseja armazenar mais alguma coluna em ALUNOS? (Sim=1 / Nao=0)" << endl;
				cin >> op2;
			}while(op2!=0);
		}	
		else if(op == 7)
		{
			cout << "\n" ;
			cout << "Deseja consultar qual coluna de ALUNOS? ";
			cin >> resp5;
			cout << "\n" ;
			if(resp5<b || resp5 ==0)
			{
				cout << "A coluna " << resp5 << " contem as sequintes informacoes: " << endl;
				cout << "Matricula: " << A[resp5].MATRICULA << endl;
				cout << "Nome do aluno: " << A[resp5].NOME << endl;
				cout << "Sexo: " << A[resp5].SEXO << endl;
				cout << "Data de Nascimento: " << A[resp5].DATA_NASCIMENTO << endl;
				cout << "Data de Matricula: " << A[resp5].DATA_MATRICULA << endl;
				cout << "ID do curso: " << A[resp5].ID << endl;
				cout << "DEL: " << A[resp5].DEL << endl;
			}
			else
			{
				cout << "Essa nao e uma coluna valida em ALUNOS! ";
				cout << "\n" ;
			}			
		}		
		else if(op == 8)
		{
			cout << "\n" ;
			cout << "Deseja alterar qual coluna de ALUNOS? ";
			cin >> resp6;
			cout << "\n" ;
			if(resp6<b || resp6 ==0)
			{
				if(A[resp6].DEL==1)
				{
					cout << "Nao e possivel alterar essa coluna pois ele ja foi excluido!" << endl;
				}
				else
				{
					cout << "Digite seu nome para a matricula " << A[resp6].MATRICULA << ": ";
					scanf(" %[^\n]s", A[resp6].NOME);
					cout << "Digite seu sexo: ";
					scanf(" %[^\n]s", A[resp6].SEXO); 
					cout << "Digite sua data de nascimento: ";
					scanf(" %[^\n]s", A[resp6].DATA_NASCIMENTO); 
					cout << "Digite sua data de matricula: ";
					scanf(" %[^\n]s", A[resp6].DATA_MATRICULA);
					cout << "Digite a coluna em CURSO que esta armazeado o ID do seu curso: ";
					cin >> A[resp6].ID;
					if(A[resp6].ID>a-1 || C[A[resp6].ID].DEL==1)
					{
						do{
							cout << "Esta nao e uma coluna valida em CURSO ou foi excluida. Por favor digite uma coluna valida!" << endl;
							cout << "\n";
							cin >> A[resp6].ID;
							A[resp6].ID=C[A[resp6].ID].ID_CURSO;
						}while(C[A[resp6].ID].DEL!=1 || A[resp6].ID<a-1);
					}
					cout << "\n" ;
				}
			}
			else
			{
				cout << "Essa nao e uma coluna valida em ALUNOS! ";
				cout << "\n" ;
			}	
		}
		else if(op == 9)
		{
			cout << "\n";
			cout << "Deseja excluir qual coluna de ALUNOS? ";
			cin >> resp7;
			cout << "\n" ;
			if(resp7<b || resp7 ==0)
			{
				cout << "Digite 1 para exclui as informacoes dessa coluna ou 0 para manter: ";
				cin >> vt1;
				if(vt1==0)
				{
					cout << "\n";
					cout << "As informacoes dessa coluna foram mantidos!";
					cout << "\n";
				}
				else if(vt1==1)
				{
					cout << "\n";
					cout << "As informacoes dessa coluna foram excluidas!";
					cout << "\n";
					A[resp7].DEL=1;
				}
				else
				{
					cout << "\n";
					cout << "Numero invalido! digite 0 ou 1";
					cout << "\n";
				}
			}
			else
			{
				cout << "Essa nao e uma coluna valida em ALUNOS! ";
				cout << "\n" ;
			}		
		}		
		else if(op == 10)
		{
			for (b=0 ; b<cont1-1 ; b++)
			{
				cout << "\n";
				cout << "Informacoes da coluna " << b << " ALUNOS" << endl;
				cout << "Matricula: " << A[b].MATRICULA << endl;
				cout << "Nome do aluno: " << A[b].NOME << endl;
				cout << "Sexo: " << A[b].SEXO << endl;
				cout << "Data de Nascimento: " << A[b].DATA_NASCIMENTO << endl;
				cout << "Data de Matricula: " << A[b].DATA_MATRICULA << endl;
				cout << "ID do curso: " << A[b].ID << endl;
				cout << "DEL: " << A[b].DEL << endl;
			}
		}
		else if(op != 11)
		{
			cout<<"Opcao Invalida!"<<endl;
		}																
	}while(op!=11);
}
