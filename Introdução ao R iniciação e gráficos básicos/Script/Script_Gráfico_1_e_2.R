dados<-read.table(file.choose(),header=T)
dados   
attach(dados)

#Comando tabula os dados da Variav�l (separa todos os elementos diferentes e conta quanto de cada h� na Variavel)
tabela1<-table(estcivil) 
tabela1

#Desenhar Grafico   
bp<-barplot(tabela1)

######Gr�fico Personalizado####

#inserir fundo colorido
par(bg="white") #cor do fundo do gr�fico

#Desenhar Gr�fico Personalizado
bp<-barplot(tabela1,
xlab="Estado Civil",              #nomeia o eixo x
ylab="N� de pessoas",             #nomeia o eixo y
main="Estado civil \n dos entrevistados",  #t�tulo do gr�fico
ylim=c(0,23),                     #origem e fim do eixo-y
col="darkblue",                   #declara��o da cor, veja site
las=1,                            #muda a posi��o dos n�meros do eixo-y
cex.axis=1,                       #tamanho da fonte eixo-y
cex=1,                            #tamanho da fonte eixo-x 
cex.lab=1,                        #tamanho da fonte do nome dos eixos
font.axis = 1 ,                   #estilo da letra: 1-normal...
cex.main=1.5,                     #tamanho da fonte do t�tulo
adj=0.5                           #orienta��o do texto: 0 esq, 0.5 centro e 1 direita
)

axis(2,seq(0,20,1),las=1,cex.axis=1)   #apresenta divis?es no eixo-y
                                       #2->eixo-y; seq->sequ�ncia de 0 a 20, divididas de 1 em 1
                                       #las=1 -> posi��o do horizontal

abline(h=0)                      #linha horizontal em x=0

text(bp,tabela1, labels = format(tabela1, 3), #inserir r?tulos de dados
     pos = 3, cex = 1)

dados<-read.table(file.choose(),header=T)

dados

attach(dados)

tabela<-table(estcivil)

tabela1<-prop.table(tabela)*100 #o gr�fico ser� confeccionado usando-se a tabela1 como prop.table(tabela)*100 
tabela1

par(bg="white") #cor do fundo do gr�fico

bp<-barplot(tabela1,
ylim=c(0,60),
xlab="Estado Civil", 
ylab="% de pessoas", 
main="Estado civil \n dos entrevistados", 
col="orange", 
las=0.9, 
)

abline(h=0) #linha horizontal em x=0

text(bp,tabela1, labels = format(tabela1, 3), pos = 3, cex = 0.9)