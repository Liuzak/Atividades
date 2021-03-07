Algoritmo "LPA"

Var
   NomeT, Opcao, NomeD, Opcao1: caracter
   NumD, NumA, Contagem, SomaRep, SomaFinal, SomaApro: inteiro
   A1, A2, Media, MaiorMedia, MenorMedia, SomaMedia, MediaPorD, MediaGT, SomaGT: real
Inicio
   repita
      se (Opcao = "S") ou (Opcao = "s") entao
         MediaGT <-0
         SomaGT <-0
         NumA <-0
         MediaPorD <-0
         MaiorMedia <-0
         MenorMedia <-0
         SomaRep <-0
         SomaFinal <-0
         SomaApro <-0
         SomaMedia <-0
      fimse
      limpatela
      escreva ("Escreva o nome da turma: ")
      leia (NomeT)
      escreva ("Digite o numero de disciplinas da turma: ")
      leia (NumD)
         repita
            se (Opcao1 = "S") ou (Opcao1 = "s") entao
               NumA <-0
               MediaPorD <-0
               MaiorMedia <-0
               MenorMedia <-0
               SomaRep <-0
               SomaFinal <-0
               SomaApro <-0
               SomaMedia <-0
            fimse
            escreva ("Escreva o nome disciplina: ")
            leia (NomeD)
            escreva ("Digite o numero de alunos na turma: ")
            leia (NumA)
            Contagem <-0
            enquanto Contagem < NumA faca
               escreval ("Escreva nota 1° e nota 2° dessa disciplina do ",Contagem+1,"° aluno: ")
               leia (A1)
               leia (A2)
               se contagem < NumA entao
                  Contagem <- Contagem + 1
                  Media <- (A1+A2) / 2.0
                  SomaMedia <- SomaMedia + Media
                  se (Media > MaiorMedia) ou (Contagem = 1) entao
                     MaiorMedia <- Media
                  fimse
                  se (Media < MenorMedia) ou (Contagem = 1) entao
                     MenorMedia <- Media
                  fimse
                  se Media < 3 entao
                     escreval ("")
                     escreval ("Reprovado por média!")
                     SomaRep <- SomaRep + 1
                     escreval ("")
                  fimse
                  se (Media >=3) e (Media < 7) entao
                     escreval ("")
                     escreval ("Aguardando final!")
                     SomaFinal <- SomaFinal + 1
                     escreval ("")
                  fimse
                  se Media >= 7 entao
                     escreval ("")
                     escreval ("Aprovado por média!")
                     SomaApro <- SomaApro +1
                     escreval ("")
                  fimse
               fimse
            fimenquanto
            MediaPorD <- SomaMedia / NumA
            escreval ("#### RESUMO DA DISCIPLINA ####")
            escreval ("DISCIPLINA: ", NomeD)
            escreval ("QTD TOTAL DE ALUNOS: ", NumA)
            escreval ("MÉDIA GERAL DA DISCIPLINA: ", MediaPorD)
            escreval ("MAIOR MÉDIA DA DISCIPLINA: ", MaiorMedia)
            escreval ("MENOR MÉDIA DA DISCIPLINA: ", MenorMedia)
            escreval ("QTD ALUNOS REPROVADOS: ", SomaRep)
            escreval ("QTD ALUNOS NA FINAL: ", SomaFinal)
            escreval ("QTD ALUNOS APROVADOS: ", SomaApro)
            escreval ("")
            escreva ("Deseja escrever outra disciplina? (S-Sim ou N-Não)")
            MediaGT <- MediaGT + MediaPorD
            SomaGT <- MediaGT / NumD
            leia (Opcao1)
         ate (Opcao1 = "N") ou (Opcao1 = "n")
      escreval ("")
      escreval ("#### RESUMO DA TURMA ####")
      escreval ("TURMA: ", NomeT)
      escreval ("QTD DE DISCIPLINAS: ", NumD)
      escreval ("MÉDIA GERAL DA TURMA: ", MediaGT)
      escreva ("Deseja escrever o nome de outra turma? (S-Sim ou N-Não)")
      leia (Opcao)
   ate (Opcao = "N") ou (Opcao = "n")
Fimalgoritmo