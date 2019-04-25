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

TURMAS <- read.csv2.ffdf(file = "TURMAS.CSV",  sep = "|")

setwd('..')
setwd("./dados_encontro_1_ufpe/")

save.ffdf(TURMAS, dir = "./TURMAS", overwrite = TRUE)
rm(list =ls())

setwd('..')
setwd("./dados_encontro_1_ufpe/")

load.ffdf(dir = "./TURMAS/")

TURMAS_PE <-subset(TURMAS, CO_UF==26)
dim(TURMAS_PE)

TURMAS_PE <- as.data.frame(TURMAS_PE)

setwd('..')
setwd("./dados_encontro_1_ufpe/")

save(TURMAS_PE, file = "turmas_pe_censo_escolar_2016.RData")
View(TURMAS_PE)
