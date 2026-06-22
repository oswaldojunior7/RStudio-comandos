dados<-read.delim("clipboard")
str(dados)
cor(dados)
nulo = lm(Lucro~1,data=dados)
completo = lm(Lucro~.,data=dados)
step(completo, data=dados, direction="backward") # mostra etapas
