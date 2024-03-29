dados<-read.table(file.choose(),header=T) #buscando um banco de dados
dados                                     #mostrando o banco de dados
attach(dados)                             #anexando o banco de dados

tabela1<-table(estcivil)    #montando uma tabela com a vari�vel estado civil
tabela1                                   #mostrando a tabula��o dos dados


par(bg="lightyellow")                     #inserindo uma cor de fundo do gr�fico

par(mar = c(4.1, 7.1, 2.1, 2.1))   #aumentando as margens para editar fora
                                   #da �rea do gr�fico
                                   #s� usa quando achar necess�rio

bbp<-barplot(                    #gr�fico de colunas (barras)=barplot
tabela1,                         #origem dos dados (tabela1)
horiz=TRUE,        #orienta��o das colunas - horiz=TRUE indica horizontal verdadeiro
#ylab="Estado Civil",             #nomeia o eixo y  -> a inclus�o ser� manual
xlab="N� de pessoas",                        #nomeia o eixo x
main="Estado civil \n dos Entrevistados",    #t�tulo do gr�fico
xlim=c(0,23),                             #origem do eixo-x em 0 e fim em 23
col="lightgreen",                #declara��o da cor do gr�fico
las=1,                    #muda a posi��o dos n�meros das categorias do eixo-y
cex=1,                            #tamanho da fonte eixo-y 
cex.axis=1,                       #tamanho da fonte eixo-x
cex.lab=1,                        #tamanho da fonte do nome dos eixos
font.axis = 1 ,         #estilo da letra: 1-normal, 2-negrito e 3-it?lico
cex.main=1,                       #tamanho da fonte do t�tulo
adj=0.5,              #movimenta o texto do t�tulo e eixo-x para
                      #esquerda=0, centro=0.5 e direita=1
)                     #fim da fun��o e constru��o do gr�fico 

abline(v=0)           #insere uma linha vertical em y=0

mtext(side = 2, text = "Estado civil",    #inser��o manual do nome do eixo-y
 line = 5)                     #side=2 ->indica lado direito
             #line=5 ->deslocamento para esquerda na posi��o 5 
             #line=0 ->o texto fica perto da linha vertical

text(tabela1,bbp, labels = format(tabela1, 3), #inserir r�tulos de dados
     pos = 4, cex = 1)    #pos=4 ->lado direito centro(no caso  fora da barra)