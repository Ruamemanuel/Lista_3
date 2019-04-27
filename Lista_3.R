##Questão 2####
x <- 38

y <- 42

z <- (x+y)
z

cpf <- 11300273410

z * cpf

##Questão 3####

head(mtcars) #importando os dados
View(mtcars)

dim(mtcars) #número de dimensão da base

str (mtcars) #descrição dos tipos de variáveis

mtcars [ ,3] #impressão da terceira coluna

mtcars [2, ] #impressão da segunda linha

mtcars$cyl[4] #4º elemento na variável cyl

summary(mtcars) # resumo das variáveis 

##Questão 4####
install.packages("ffbase", dependencies = TRUE) #instalando pacote

require(ffbase) #carregando pacote 

setwd("./dados_encontro_1_ufpe/") #definindo diretório

TURMAS <- read.csv2.ffdf(file = "TURMAS.CSV",  sep = "|") #carregando dados

setwd('..') #move wd para nível anterior 
setwd("./dados_encontro_1_ufpe/") 

save.ffdf(TURMAS, dir = "./TURMAS", overwrite = TRUE) #salvando em formato FFDFrm(list =ls())

setwd('..') #move wd para nível anterior
setwd("./dados_encontro_1_ufpe/")

TURMAS_PE <-subset(TURMAS, CO_UF==26) #Filtrando para Pernambuco
dim(TURMAS_PE) #Conferindo a partir da dimensão se foi feito o filtro

TURMAS_PE <- as.data.frame(TURMAS_PE) #Transformando em Data Frame

setwd('..') #move wd para nível anterior
setwd("./dados_encontro_1_ufpe/")

save(TURMAS_PE, file = "turmas_pe_censo_escolar_2016.RData") #Salvando em Rdata
View(TURMAS_PE) #Conferindo a tabela do filtro

##Questão 5####
setwd('..')
setwd("./dados_encontro_1_ufpe/") #puxando o diretório

install.packages("magrittr") #instalando pacote
library(magrittr) #carregando funções

load("turmas_pe_censo_escolar_2016.RData") #carregando dados 
View(TURMAS_PE) #analisando dados

install.packages("tidyverse")
library(tidyverse) 

setwd('..') 
setwd("./dados_encontro_1_ufpe/") #puxando diretório

load("turmas_pe_censo_escolar_2016.RData") #carregando dados


mean(TURMAS_PE$NU_MATRICULAS) #MÉDIA DE MATRÍCULAS

median(TURMAS_PE$NU_MATRICULAS) #MEDIANA MATRICULAS

sd(TURMAS_PE$NU_MATRICULAS) #DESVIO PADRÃO

boxplot(TURMAS_PE$NU_MATRICULAS) #BOXPLOT

plot(TURMAS_PE$NU_MATRICULAS) #PLOT

barplot(TURMAS_PE$NU_MATRICULAS) #BARPLOT

##Questão 6####
#A

install.packages("ffbase", dependencies = TRUE) #instalando pacote

require(ffbase) #carregando pacote 

setwd('..')
setwd("./dados_encontro_1_ufpe/") #puxando repositório

DOCENTES_NE <- read.csv2(file = "DOCENTES_NORDESTE.CSV",  sep = "|") #carregando dados

View(DOCENTES_NE) #analisando tabela

Tabela_Raça <- table(DOCENTES_NE$TP_COR_RACA) #analisando os dados da coluna


Nao_Declarados <- (1240352 * 100 / 2930934) #calculando porcentagem
Nao_Declarados == #42.31934 #resultado

#B
  
  install.packages("ffbase", dependencies = TRUE) #instalando pacote

require(ffbase) #carregando pacote 
 
getwd()
setwd("./dados_encontro_1_ufpe/") #puxando diretório

View(DOCENTES_NE) #analisando dados

Tabela_Raça <- table(DOCENTES_NE$TP_COR_RACA) #analisando dados da coluna

Pardos_Pretos <- (119972 + 968682) #somando o valor de pardos e pretos 
Pardos_Pretos #resultado

Porcentagem_Pardos_Pretos <- (Pardos_Pretos * 100 / 2930934) #calculando a porcentagem
Porcentagem_Pardos_Pretos #resultado
