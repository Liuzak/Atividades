Algoritmo "Desafio de LPA - 2� Avalia��o"
Tipo
   tipoAluno = Registro  // GRUPO - 01265908 - LUIZ ANTONIO CAVALCANTE DE LIMA
      CURSO: caracter    //         01395387 - GILVANELSON COSTA DO NASCIMENTO
      EQUIPAM: caracter  //         01366054 - RAFAEL ANTONIO DE LIMA SILVA
      CONEXAO: caracter  //         01385576 - LUIZ ANDRE
      USODIA: inteiro
   Fimregistro           //Pra ver todas as informa��es tem que deixa o console em tela cheia ou aumentar ele mais um pouco.
Var
   v_Aluno : vetor [1..30] de tipoAluno //Quando eu tento execultar com 90 vetores, depois de inserir varios dados acaba dando erro em algum momento(acho que por ser muito grande ou meu pc n�o roda), deixei com 30 mesmo.
   BL: vetor [1..30] de inteiro
   DM: vetor [1..30] de inteiro
   Contar, Valor, Contar1, Valor1,a,b: inteiro
   BL1,DM1,cont,cont1,ord,temp,SIDM,SIBL,MEBL,MEDM,HIDM,HIBL,PCDM,PCBL,CLDM,CLBL,TBDM,TBBL: inteiro
   SomaUsoBL,SomaUsoDM,SomaDM,SomaBL,SomaPCDM,SomaPCBL,SomaCLDM,SomaCLBL,SomaTBDM,SomaTBBL: inteiro
   MediaDM,MediaBL,PSIDM,PSIBL,PMEDM,PMEBL,PHIDM,PHIBL,PMediaPCDM,PMediaPCBL,PMediaCLDM,PMediaCLBL,PMediaTBDM,PMediaTBBL: real
   MediaPCDM,MediaPCBL,MediaCLDM,MediaCLBL,MediaTBDM,MediaTBBL,MedianaBL,MedianaDM,Desvio,Desvio1: real
Inicio
   para cont de 1 ate 30 faca
      escreva("Digite o nome de um dos 3 cursos para o",cont," aluno(SI, MEDICINA, HISTORIA): ")
      leia (v_Aluno[cont].CURSO) //Irei utilizar um curso para cada �rea para facilita
      escreva("Tipo de equipamento utilizado para acompanhar as aulas remotas(COMPUTADOR, CELULAR, TABLET): ")
      leia (v_Aluno[cont].EQUIPAM)
      escreva("Tipo de conex�o utilizada(DADOS M�VEIS, BANDA LARGA): ")
      leia (v_Aluno[cont].CONEXAO)
      se (v_Aluno[cont].CONEXAO="DADOS M�VEIS") e (v_Aluno[cont].CURSO="SI") entao
         SIDM<-SIDM+1
      fimse
      se (v_Aluno[cont].CONEXAO="BANDA LARGA") e (v_Aluno[cont].CURSO="SI") entao
         SIBL<-SIBL+1
      fimse
      se (v_Aluno[cont].CONEXAO="DADOS M�VEIS") e (v_Aluno[cont].CURSO="MEDICINA") entao
         MEDM<-MEDM+1
      fimse
      se (v_Aluno[cont].CONEXAO="BANDA LARGA") e (v_Aluno[cont].CURSO="MEDICINA") entao
         MEBL<-MEBL+1
      fimse
      se (v_Aluno[cont].CONEXAO="DADOS M�VEIS") e (v_Aluno[cont].CURSO="HISTORIA") entao
         HIDM<-HIDM+1
      fimse
      se (v_Aluno[cont].CONEXAO="BANDA LARGA") e (v_Aluno[cont].CURSO="HISTORIA") entao
         HIBL<-HIBL+1
      fimse
      escreva("Digite o tempo m�dio em que fica na internet diariamente: ")
      leia (v_Aluno[cont].USODIA)
      se (v_Aluno[cont].CONEXAO="BANDA LARGA") entao
           SomaUsoBL<-SomaUsoBL+v_Aluno[cont].USODIA
           SomaBL<-SomaBL+1
           BL[SomaBL]<-v_Aluno[cont].USODIA
      fimse
      se (v_Aluno[cont].CONEXAO="DADOS M�VEIS") entao
           SomaUsoDM<-SomaUsoDM+v_Aluno[cont].USODIA
           SomaDM<-SomaDM+1
           DM[SomaDM]<-v_Aluno[cont].USODIA
      fimse
      se (v_Aluno[cont].CONEXAO="DADOS M�VEIS") e (v_Aluno[cont].EQUIPAM="COMPUTADOR") entao
         SomaPCDM<-SomaPCDM+v_Aluno[cont].USODIA
         PCDM<-PCDM+1
      fimse
      se (v_Aluno[cont].CONEXAO="BANDA LARGA") e (v_Aluno[cont].EQUIPAM="COMPUTADOR") entao
         SomaPCBL<-SomaPCBL+v_Aluno[cont].USODIA
         PCBL<-PCBL+1
      fimse
      se (v_Aluno[cont].CONEXAO="DADOS M�VEIS") e (v_Aluno[cont].EQUIPAM="CELULAR") entao
         SomaCLDM<-SomaCLDM+v_Aluno[cont].USODIA
         CLDM<-CLDM+1
      fimse
      se (v_Aluno[cont].CONEXAO="BANDA LARGA") e (v_Aluno[cont].EQUIPAM="CELULAR") entao
         SomaCLBL<-SomaCLBL+v_Aluno[cont].USODIA
         CLBL<-CLBL+1
      fimse
      se (v_Aluno[cont].CONEXAO="DADOS M�VEIS") e (v_Aluno[cont].EQUIPAM="TABLET") entao
         SomaTBDM<-SomaTBDM+v_Aluno[cont].USODIA
         TBDM<-TBDM+1
      fimse
      se (v_Aluno[cont].CONEXAO="BANDA LARGA") e (v_Aluno[cont].EQUIPAM="TABLET") entao
         SomaTBBL<-SomaTBBL+v_Aluno[cont].USODIA
         TBBL<-TBBL+1
      fimse
      escreval("")
   fimpara
   limpatela
   para cont1 de 1 ate 29 faca
      para ord de (cont1+1) ate SomaBL faca
         se BL[cont1] > BL[ord] entao
            temp<-BL[cont1]
            BL[cont1]<-BL[ord]
            BL[ord]<-temp
         fimse
      fimpara
   fimpara
   para cont1 de 1 ate 29 faca
      para ord de (cont1+1) ate SomaBL faca
         se BL[cont1] = BL[ord] entao
            Contar<-Contar+1
            Valor<-BL[cont1]
         fimse
      fimpara
   fimpara
   para cont1 de 1 ate 29 faca
      para ord de (cont1+1) ate SomaDM faca
         se DM[cont1] > DM[ord] entao
            temp<-DM[cont1]
            DM[cont1]<-DM[ord]
            DM[ord]<-temp
         fimse
      fimpara
   fimpara
   para cont1 de 1 ate 29 faca
      para ord de (cont1+1) ate SomaDM faca
         se DM[cont1] = DM[ord] entao
            Contar1<-Contar1+1
            Valor1<-DM[cont1]
         fimse
      fimpara
   fimpara
   se (SomaUsoBL+SomaBL)=0 entao
      MediaBL<-0
   fimse
   se (SomaUsoBL+SomaBL)<>0 entao
      MediaBL:=SomaUsoBL/SomaBL
   fimse
   se (SomaUsoDM+SomaDM)=0 entao
      MediaDM<-0
   fimse
   se (SomaUsoDM+SomaDM)<>0 entao
      MediaDM:=SomaUsoDM/SomaDM
   fimse
   a<-1
   b<-1
   enquanto a <= SomaBL faca
      Desvio<-Desvio + (BL[a] - MediaBL) * (BL[a] - MediaBL)
      a<-a+1
   fimenquanto
   Desvio<-( Desvio / SomaBL-1 )^0.5
   enquanto b <= SomaDM faca
      Desvio1<-Desvio1 + (DM[b] - MediaDM) * (DM[b] - MediaDM)
      b<-b+1
   fimenquanto
   Desvio1<-( Desvio1 / SomaDM-1 )^0.5
   se (SomaDM+SomaBL)<>0 entao
      se SomaBL mod 2=0 entao
         SomaBL<-SomaBL
      senao
         SomaBL<-SomaBL+1
      fimse
      se SomaDM mod 2=0 entao
         SomaDM<-SomaDM
      senao
         SomaDM<-SomaDM+1
      fimse
      MedianaBL<-SomaBL/2
      MedianaDM<-SomaDM/2
      BL1<-int(MedianaBL)
      DM1<-int(MedianaDM)
   fimse
   se PCDM=0 entao //S� ira fazer alguma divis�o se tiver valores maiores que 0. Se n�o tiver valores maiores que 0, a media ser� sempre 0, assim n�o pode existi erros de divis�es por 0.
       MediaPCDM<-0
   fimse
   se PCBL=0 entao
      MediaPCBL<-0
   fimse
   se CLDM=0 entao
      MediaCLDM<-0
   fimse
   se CLBL=0 entao
      MediaCLBL<-0
   fimse
   se TBDM=0 entao
      MediaTBDM<-0
   fimse
   se TBBL=0 entao
      MediaTBBL<-0
   fimse
   se PCDM<>0 entao
      MediaPCDM:=SomaPCDM/PCDM
   fimse
   se PCBL<>0 entao
      MediaPCBL:=SomaPCBL/PCBL
   fimse
   se CLDM<>0 entao
      MediaCLDM:=SomaCLDM/CLDM
   fimse
   se CLBL<>0 entao
      MediaCLBL:=SomaCLBL/CLBL
   fimse
   se TBDM<>0 entao
     MediaTBDM:=SomaTBDM/TBDM
   fimse
   se TBBL<>0 entao
      MediaTBBL:=SomaTBBL/TBBL
   fimse
   se (MediaPCDM+MediaPCBL)=0 entao
      PMediaPCDM<-0
   fimse
   se (MediaPCDM+MediaPCBL)<>0 entao
      PMediaPCDM<-(MediaPCDM*100)/(MediaPCDM+MediaPCBL)
      PMediaPCBL<-(MediaPCBL*100)/(MediaPCBL+MediaPCDM)
   fimse
   se (MediaCLDM+MediaCLBL)=0 entao
      PMediaCLDM<-0
   fimse
   se (MediaCLDM+MediaCLBL)<>0 entao
      PMediaCLDM<-(MediaCLDM*100)/(MediaCLDM+MediaCLBL)
      PMediaCLBL<-(MediaCLBL*100)/(MediaCLBL+MediaCLDM)
   fimse
   se (MediaTBDM+MediaTBBL)=0 entao
      PMediaTBDM<-0
   fimse
   se (MediaTBDM+MediaTBBL)<>0 entao
      PMediaTBDM<-(MediaTBDM*100)/(MediaTBDM+MediaTBBL)
      PMediaTBBL<-(MediaTBBL*100)/(MediaTBBL+MediaTBDM)
   fimse
   se SIDM=0 entao
      PSIDM<-0
   fimse
   se SIDM<>0 entao
      PSIDM<-(SIDM*100)/10
   fimse
   se SIBL=0 entao
      PSIBL<-0
   fimse
   se SIBL<>0 entao
      PSIBL<-(SIBL*100)/10
   fimse
   se MEDM=0 entao
      PMEDM<-0
   fimse
   se MEDM<>0 entao
      PMEDM<-(MEDM*100)/10
   fimse
   se MEBL=0 entao
      PMEBL<-0
   fimse
   se MEBL<>0 entao
      PMEBL<-(MEBL*100)/10
   fimse
   se HIDM=0 entao
      PHIDM<-0
   fimse
   se HIDM<>0 entao
      PHIDM<-(HIDM*100)/10
   fimse
   se HIBL=0 entao
      PHIBL<-0
   fimse
   se HIBL<>0 entao
      PHIBL<-(HIBL*100)/10
   fimse
   escreval("")
   escreval("#### SUM�RIO ESTAT�STICO ####")
   escreval("")
   escreval("TIPO DE CONEX�O: CABO/FIBRA (BANDA LARGA)")
   escreval("M�DIA: ",MediaBL," HORAS")
   se BL1=0 entao
      escreval("MEDIANA: 0")
   senao
      escreval("MEDIANA: ",BL[BL1],"")
   fimse
   se Valor=0 entao
      escreval("MODA: N�O EXISTE MODA, NENHUM NUMERO SE REPETE!")
   senao
      escreval("MODA: ",Valor)
   fimse
   escreval("DESVIO PADR�O: ",Desvio)
   escreval("")
   escreval("TIPO DE CONEX�O: 3G/4G (DADOS M�VEIS)")
   escreval("M�DIA: ",MediaDM," HORAS")
   se DM1=0 entao
      escreval("MEDIANA: 0")
   senao
      escreval("MEDIANA: ",DM[DM1],"")
   fimse
   se Valor1=0 entao
      escreval("MODA: N�O EXISTE MODA, NENHUM NUMERO SE REPETE!")
   senao
      escreval("MODA: ",Valor1)
   fimse
   escreval("DESVIO PADR�O: ",Desvio1)
   escreval("")
   escreval("")
   escreval("########   TABELA DE DUPLA ENTRADA   ########")
   escreval("| CURSO        | DADOS M�VEIS | BANDA LARGA |")
   escreval("---------------------------------------------")
   escreval("| SI           |     ",PSIDM,"%     |     ",PSIBL,"%    |")
   escreval("| MEDICINA     |     ",PMEDM,"%     |     ",PMEBL,"%    |")
   escreval("| HISTORIA     |     ",PHIDM,"%     |     ",PHIBL,"%    |")
   escreval("---------------------------------------------")
   escreval("")
   escreval("")
   escreval("#######   TABELA DE FREQU�NCIA   #######")
   escreval("| �REA    | DADOS M�VEIS | BANDA LARGA |")
   escreval("----------------------------------------")
   escreval("| EXATAS  |     ",PSIDM,"%     |     ",PSIBL,"%    |")
   escreval("| SA�DE   |     ",PMEDM,"%     |     ",PMEBL,"%    |")
   escreval("| HUMANAS |     ",PHIDM,"%     |     ",PHIBL,"%    |")
   escreval("----------------------------------------")
   escreval("")
   escreval("")
   escreval("#########   TABELA DE FREQU�NCIA   #########")
   escreval("| EQUIPAMENTO | DADOS M�VEIS | BANDA LARGA |")
   escreval("--------------------------------------------")
   escreval("| COMPUTADOR  |     ",PMediaPCDM,"%     |     ",PMediaPCBL,"%    |")
   escreval("| CELULAR     |     ",PMediaCLDM,"%     |     ",PMediaCLBL,"%    |")
   escreval("| TABLET      |     ",PMediaTBDM,"%     |     ",PMediaTBBL,"%    |")
   escreval("--------------------------------------------")
Fimalgoritmo