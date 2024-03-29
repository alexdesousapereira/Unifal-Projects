##############################################################################
##############Fazendo Gr�fico de Setores (Pizza) 3D #############################
#############################################################################

#install.packages("plotrix") #instalando o pacote

library(plotrix) #pedindo para usar o pacote

dados<-read.table(file.choose(),header=T) #buscando o banco de dados  
dados                                     #visualizando o banco de dados
attach(dados)                             #anexando o banco de dados


tab1<-table(marcaCel)              #montando a tabula��o da vari�vel marca Celular 
tab1                              #visualizando a tabula��o dos dados

#fazendo o gr�fico de setores (pizza) 3D

pie3D(tab1) 


#----------------EDITANDO O GR�FICO DE PIZZA---------------#

pie3D(                                                        #fun��o: gr�fico de pizza 3D
  tab1,                                                       #origem dos dados
  main="Marcas \n de Celulares",                              #t�tulo do gr�fico
  explode=0.3,                                                #separarando em fatias
  labels=paste(names(tab1)," (",tab1," Celulares", ")",sep="")) #r�tulos foi editado dentro da fun��o