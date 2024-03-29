##############################################################################
##############Fazendo Gr�fico de Setores (Pizza)#############################
#############################################################################

dados<-read.table(file.choose(),header=T) #buscando um banco de dados
dados                                     #mostrando o banco de dados
attach(dados)                             #anexando o banco de dados

tab1<-table(estcivil)
tab1

pp<-pie(tab1) #default do R


####################FORMATANDO O GR�FIICO DE SETORES (2D)##########################

#1)o fundo (se desejar, porque � dispensav�l)

par(bg="skyblue")#cor do fundo do gr�fico

#2) tabula��o

tab1<-table(estcivil)
tab1


#3) constru��o do gr�fico

pp<-pie(tab1,
        main="Estado civil \n dos entrevistados",  #t�tulo do gr�fico
        col=c("tomato","slateblue1"),            #cores ou col=rainbow(2)
        cex.axis=1,                           #tamanho da fonte eixo-x
        cex.lab=1.5,                        #tamanho da fonte do nome dos eixos
        font.axis = 1 ,                   #estilo da letra: 1-normal...
        cex.main=1.5,                   #tamanho da fonte do t�tulo
        labels=tab1,                    #apresentar o valor do r�tulo dos dados
)

#4) legenda

legend(x=0.7,y=1,names(tab1),col = c("tomato","slateblue1"),pch=rep(15,22))

####################GR�FIICO DE SETORES (3D)##########################

#install.packages("plotrix") #instalando o pacote

library(plotrix) #pedindo para usar o pacote

dados<-read.table(file.choose(),header=T) #buscando o banco de dados  
dados                                     #visualizando o banco de dados
attach(dados)                             #anexando o banco de dados


tab1<-table(estcivil)              #montando a tabula��o da vari�vel estado civil
tab1                              #visualizando a tabula��o dos dados

#fazendo o gr�fico de setores (pizza) 3D

pie3D(tab1) 


#----------------EDITANDO O GR�FICO DE PIZZA---------------#

pie3D(                                                        #fun��o: gr�fico de pizza 3D
  tab1,                                                       #origem dos dados
  main="Estado civil \n dos entrevistados",                  #t�tulo do gr�fico
  explode=0.1,                                                #separarando em fatias
  labels=paste(names(tab1)," (",tab1," pessoas", ")",sep="")) #r�tulos foi editado dentro da fun��o