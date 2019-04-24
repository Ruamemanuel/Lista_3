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




