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

DOCENTES_NE <- read.csv2(file = "DOCENTES_NORDESTE.csv",  sep = "|") #carregando dados

View(DOCENTES_NE) #analisando tabela

docentes_pe <- subset(DOCENTES_NE, CO_UF == "26") #extraindo os docentes de PE

docentes_pe <- as.data.frame(docentes_pe) #transformando em dataframe

dim(docentes_pe) #buscando a dimensão

table(docentes_pe$TP_COR_RACA) #vizualizando a tabela

prop.table(table(docentes_pe$TP_COR_RACA))*100 #encontrando a porcentagem

plot(prop.table(table(docentes_pe$TP_COR_RACA))*100) #gerando gráficos por brincadeira

require(tidyverse) #requerendo tidyverse

ggplot(docentes_pe, aes(prop.table(docentes_pe$TP_COR_RACA)*100))+geom_bar() #outro gráfico


#B
  
  install.packages("ffbase", dependencies = TRUE) #instalando pacote

require(ffbase) #carregando pacote 
 

setwd("./dados_encontro_1_ufpe/") #puxando diretório

View(DOCENTES_NE) #analisando dados

prop.table(table(docentes_pe$TP_COR_RACA))*100 #encontrando a porcentagem

Soma_pretos_pardos <- 3.6 + 27.8 #soma das porcentagens de pretos e pardos
Soma_pretos_pardos #resultado da soma
