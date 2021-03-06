
data=read.csv(url("http://archive.ics.uci.edu/ml/machine-learning-databases/wine/wine.data"), header = FALSE)

names(data)=c('Class','Alcohol','Malic acid','Ash','Alcalinity of ash','Magnesium','Total phenols','Flavanoids','Nonflavanoid phenols','Proanthocyanins','Color intensity','Hue','OD280/OD315','Proline')

#LIBERIAS NECESARIAS 
library(dplyr)
library(datasets)
library(fdth)


#FILTRADA DE COLUMNA POR CLASE
fc1=data %>% filter(data$Class==1)
fc2=data %>% filter(data$Class==2)
fc3=data %>% filter(data$Class==3)

#PARTE 1........................................................................
#HISTOGRAMA DE VARIABLES CUANTITATIVAS

#HISTOGRAMAS DE FILTRADO DE CLASE1


hist(fc1$Alcohol,xlab ="Alcohol",ylab="Frecuencia",main="Histograma",col=c("blue"))
hist(fc1$`Malic acid`,xlab ="�cido M�lico",ylab="Frecuencia" ,main="Histograma",col=c("blue"))
hist(fc1$Ash,xlab ="Cenizas",ylab="Frecuencia" ,main="Histograma",col=c("blue"))
hist(fc1$`Alcalinity of ash`,xlab ="Alcalinidad de cenizas",ylab="Frecuencia",main="Histograma" ,col=c("blue"))
hist(fc1$Magnesium,xlab ="Magnesio",ylab="Frecuencia" ,main="Histograma",col=c("gold"))
hist(fc1$`Total phenols`,xlab ="Fenoles totales",ylab="Frecuencia" ,main="Histograma",col=c("gold"))
hist(fc1$Flavanoids,xlab ="Flavonoides",ylab="Frecuencia",main="Histograma" ,col=c("gold"))
hist(fc1$`Nonflavanoid phenols`,xlab ="Fenoles no flavonoides",ylab="Frecuencia" ,main="Histograma",col=c("gold"))


#HISTOGRAMA DE FILTRADO DE CLASE 2
hist(fc2$Alcohol,xlab ="Alcohol",ylab="Frecuencia",main="Histograma",col=c("blue"))
hist(fc2$`Malic acid`,xlab ="�cido M�lico",ylab="Frecuencia",main="Histograma",col=c("blue"))
hist(fc2$Ash,xlab ="Cenizas",ylab="Frecuencia",main="Histograma",col=c("blue"))
hist(fc2$`Alcalinity of ash`,xlab ="Alcalinidad de cenizas",ylab="Frecuencia",main="Histograma",col=c("blue"))
hist(fc2$Magnesium,xlab ="Magnesio",ylab="Frecuencia" ,main="Histograma",col=c("gold"))
hist(fc2$`Total phenols`,xlab ="Fenoles totales",ylab="Frecuencia" ,main="Histograma",col=c("gold"))
hist(fc2$Flavanoids,xlab ="Flavonoides",ylab="Frecuencia" ,main="Histograma",col=c("gold"))
hist(fc2$`Nonflavanoid phenols`,xlab ="Fenoles no flavonoides",ylab="Frecuencia" ,main="Histograma",col=c("gold"))

#HISTOGREAMA DE FILTRADO DE CLASE 3
hist(fc3$Alcohol,xlab ="Alcohol",ylab="Frecuencia",main="Histograma",col=c("blue"))
hist(fc3$`Malic acid`,xlab ="�cido M�lico",ylab="Frecuencia",main="Histograma",col=c("blue"))
hist(fc3$Ash,xlab ="Cenizas",ylab="Frecuencia",main="Histograma",col=c("blue"))
hist(fc3$`Alcalinity of ash`,xlab ="Alcalinidad de cenizas",ylab="Frecuencia",main="Histograma",col=c("blue"))
hist(fc3$Magnesium,xlab ="Magnesio",ylab="Frecuencia" ,main="Histograma",col=c("gold"))
hist(fc3$`Total phenols`,xlab ="Fenoles totales",ylab="Frecuencia" ,main="Histograma",col=c("gold"))
hist(fc3$Flavanoids,xlab ="Flavonoides",ylab="Frecuencia" ,main="Histograma",col=c("gold"))
hist(fc3$`Nonflavanoid phenols`,xlab ="Fenoles no flavonoides",ylab="Frecuencia" ,main="Histograma",col=c("gold"))



#DIAGRAMA DE CAJAS (CADA VARIABLE CUANTITATIVA VS VARIABLE CUALITATIVA)
#DIAGRAMA DE CAJAS FILTRADAS CON CLASE 1


boxplot(fc1$Alcohol~fc1$Class,horizontal = TRUE,xlab = "Alcohol",ylab="Vino clase 1",main="Diagrama de cajas",col=c("blue"))
boxplot(fc1$`Malic acid`~fc1$Class,horizontal = TRUE,xlab = "�cido M�lico",ylab="Vino clase 1",main="Diagrama de cajas",col=c("blue"))
boxplot(fc1$Ash~fc1$Class,horizontal = TRUE,xlab = "Cenizas",ylab="Vino clase 1",main="Diagrama de cajas",col=c("blue"))
boxplot(fc1$`Alcalinity of ash`~fc1$Class,horizontal = TRUE,xlab = "Alcalinidad Cenizas",ylab="Vino clase 1",main="Diagrama de cajas",col=c("blue"))
boxplot(fc1$Magnesium~fc1$Class,horizontal = TRUE,xlab = "Magnesio",ylab="Vino clase 1",main="Diagrama de cajas",col=c("gold"))
boxplot(fc1$`Total phenols`~fc1$Class,horizontal = TRUE,xlab = "Fenoles totales",ylab="Vino clase 1",main="Diagrama de cajas",col=c("gold"))
boxplot(fc1$Flavanoids~fc1$Class,horizontal = TRUE,xlab = "Flavonoides",ylab="Vino clase 1",main="Diagrama de cajas",col=c("gold"))
boxplot(fc1$`Nonflavanoid phenols`~fc1$Class,horizontal = TRUE,xlab = "Fenoles no flavonoides",ylab="Vino clase 1",main="Diagrama de cajas",col=c("gold"))


#DIAGRAMA DE CAJAS FILTRADAS CON CLASE 2
boxplot(fc2$Alcohol~fc2$Class,horizontal = TRUE,xlab = "Alcohol",ylab="Vino clase 2",main="Diagrama de cajas",col=c("blue"))
boxplot(fc2$`Malic acid`~fc2$Class,horizontal = TRUE,xlab = "�cido M�lico",ylab="Vino clase 2",main="Diagrama de cajas",col=c("blue"))
boxplot(fc2$Ash~fc2$Class,horizontal = TRUE,xlab = "Cenizas",ylab="Vino clase 2",main="Diagrama de cajas",col=c("blue"))
boxplot(fc2$`Alcalinity of ash`~fc2$Class,horizontal = TRUE,xlab = "Alcalinidad de cenizas",ylab="Vino clase 2",main="Diagrama de cajas",col=c("blue"))
boxplot(fc2$Magnesium~fc2$Class,horizontal = TRUE,xlab = "Magnesio",ylab="Vino clase 2",main="Diagrama de cajas",col=c("gold"))
boxplot(fc2$`Total phenols`~fc2$Class,horizontal = TRUE,xlab = "Fenoles totales",ylab="Vino clase 2",main="Diagrama de cajas",col=c("gold"))
boxplot(fc2$Flavanoids~fc2$Class,horizontal = TRUE,xlab = "Flavonoides",ylab="Vino clase 2",main="Diagrama de cajas",col=c("gold"))
boxplot(fc2$`Nonflavanoid phenols`~fc2$Class,horizontal = TRUE,xlab = "Fenoles no flavonoides",ylab="Vino clase 2",main="Diagrama de cajas",col=c("gold"))


#DIAGRAMA DE CAJAS FILTRADAS CON CLASE 3
boxplot(fc3$Alcohol~fc3$Class,horizontal = TRUE,xlab = "Alcohol",ylab="Vino clase 3",main="Diagrama de cajas",col=c("blue"))
boxplot(fc3$`Malic acid`~fc3$Class,horizontal = TRUE,xlab = "�cido M�lico",ylab="Vino clase 3",main="Diagrama de cajas",col=c("blue"))
boxplot(fc3$Ash~fc3$Class,horizontal = TRUE,xlab = "Cenizas",ylab="Vino clase 3",main="Diagrama de cajas",col=c("blue"))
boxplot(fc3$`Alcalinity of ash`~fc3$Class,horizontal = TRUE,xlab = "Alcalinidad de cenizas",ylab="Vino clase 3",main="Diagrama de cajas",col=c("blue"))
boxplot(fc3$Magnesium~fc3$Class,horizontal = TRUE,xlab = "Magnesio",ylab="Vino clase 3",main="Diagrama de cajas",col=c("gold"))
boxplot(fc3$`Total phenols`~fc3$Class,horizontal = TRUE,xlab = "Fenoles totales",ylab="Vino clase 3",main="Diagrama de cajas",col=c("gold"))
boxplot(fc3$Flavanoids~fc3$Class,horizontal = TRUE,xlab = "Flavonoides",ylab="Vino clase 3",main="Diagrama de cajas",col=c("gold"))
boxplot(fc3$`Nonflavanoid phenols`~fc3$Class,horizontal = TRUE,xlab = "Fenoles no flavonoides",ylab="Vino clase 3",main="Diagrama de cajas",col=c("gold"))


#MEDIDAS ESTADISTICAS (CADA VARIABLE CUANTITATIVA)
#MEDIDAS FILTRADAS POR CLASE 1
summary(fc1$Alcohol)
sd(fc1$Alcohol)

summary(fc1$`Malic acid`)
sd(fc1$`Malic acid`)

summary(fc1$Ash)
sd(fc1$Ash)

summary(fc1$`Alcalinity of ash`)
sd(fc1$`Alcalinity of ash`)

summary(fc1$Magnesium)
sd(fc1$Magnesium)

summary(fc1$`Total phenols`)
sd(fc1$`Total phenols`)

summary(fc1$Flavanoids)
sd(fc1$Flavanoids)

summary(fc1$`Nonflavanoid phenols`)
sd(fc1$`Nonflavanoid phenols`)


#MEDIDAS FILTRADAS POR CLASE 2
summary(fc2$Alcohol)
sd(fc2$Alcohol)

summary(fc2$`Malic acid`)
sd(fc2$`Malic acid`)

summary(fc2$Ash)
sd(fc2$Ash)

summary(fc2$`Alcalinity of ash`)
sd(fc2$`Alcalinity of ash`)

summary(fc2$Magnesium)
sd(fc2$Magnesium)

summary(fc2$`Total phenols`)
sd(fc2$`Total phenols`)

summary(fc2$Flavanoids)
sd(fc2$Flavanoids)

summary(fc2$`Nonflavanoid phenols`)
sd(fc2$`Nonflavanoid phenols`)


#MEDIDAS FILTRADAS POR CLASE 3
summary(fc3$Alcohol)
sd(fc3$Alcohol)

summary(fc3$`Malic acid`)
sd(fc3$`Malic acid`)

summary(fc3$Ash)
sd(fc3$Ash)

summary(fc3$`Alcalinity of ash`)
sd(fc3$`Alcalinity of ash`)

summary(fc3$Magnesium)
sd(fc3$Magnesium)

summary(fc3$`Total phenols`)
sd(fc3$`Total phenols`)

summary(fc3$Flavanoids)
sd(fc3$Flavanoids)

summary(fc3$`Nonflavanoid phenols`)
sd(fc3$`Nonflavanoid phenols`)


#DIAGRAMAS DE FRECUENCIAS (VARIABLES CUALITITATIVAS)
tablaFrecuencia=fdt(data$Class)
tablaFrecuencia

#DIAGRAMA DE BARRAS (VARIABLES CUALITATIVAS)
diagramaBarras=barplot(prop.table(table(data$Class)),col=c("yellow","blue","red"),legend.text=c("Vino1","Vino2","Vino3"),ylim=c(0,0.8),main="CLASE DE VINOS")
diagramaBarras

#FIN DE PARTE 1.................................................................

#PARTE 2........................................................................


library(corrplot)
library(ggplot2)


#MATRIZ DE CORRELACION VINO CLASE 1
#fc1$Class=NULL
fc1.cor<-cor(fc1,method="pearson")
round(fc1.cor,digits=2)
corrplot(fc1.cor)

#MATRIZ DE CORRELACION VINO CLASE 2
#fc2$Class=NULL
fc2.cor<-cor(fc2,method="pearson")
round(fc2.cor,digits=2)


#MATRIZ DE CORRELACION VINO CLASE 3
#fc3$Class=NULL
fc3.cor<-cor(fc3,method="pearson")
round(fc3.cor,digits=2)


#MATRIZ DE GRAFICO DE DISPERSION VINO CLASE 1
plot(fc1[,c(1,2,3,4,5,6,7,8)])

#MATRIZ DE GRAFICO DE DISEPERSION VINO CLASE 2
plot(fc2[,c(1,2,3,4,5,6,7,8)])

#MATRIZ DE GRAFICO DE DISPERSION VINO CLASE 3
plot(fc3[,c(1,2,3,4,5,6,7,8)])


#MATRIZ DE VARIANZA Y CORRELACION VINO CLASE 1
cov(fc1[,c(1,2,3,4,5,6,7,8)])

#MATRIZ DE VARIANZA Y CORRELACION VINO CLASE 2
cov(fc2[,c(1,2,3,4,5,6,7,8)])

##MATRIZ DE VARIANZA Y CORRELACION VINO CLASE 3
cov(fc3[,c(1,2,3,4,5,6,7,8)])






