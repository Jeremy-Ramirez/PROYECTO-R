
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
hist(fc1$Alcohol)
hist(fc1$`Malic acid`)
hist(fc1$Ash)
hist(fc1$`Alcalinity of ash`)
hist(fc1$Magnesium)
hist(fc1$`Total phenols`)
hist(fc1$Flavanoids)
hist(fc1$`Nonflavanoid phenols`)
hist(fc1$Proanthocyanins)
hist(fc1$`Color intensity`)
hist(fc1$Hue)
hist(fc1$`OD280/OD315`)
hist(fc1$Proline)

#HISTOGRAMA DE FILTRADO DE CLASE 2
hist(fc2$Alcohol)
hist(fc2$`Malic acid`)
hist(fc2$Ash)
hist(fc2$`Alcalinity of ash`)
hist(fc2$Magnesium)
hist(fc2$`Total phenols`)
hist(fc2$Flavanoids)
hist(fc2$`Nonflavanoid phenols`)
hist(fc2$Proanthocyanins)
hist(fc2$`Color intensity`)
hist(fc2$Hue)
hist(fc2$`OD280/OD315`)
hist(fc2$Proline)

#HISTOGREAMA DE FILTRADO DE CLASE 3
hist(fc3$Alcohol)
hist(fc3$`Malic acid`)
hist(fc3$Ash)
hist(fc3$`Alcalinity of ash`)
hist(fc3$Magnesium)
hist(fc3$`Total phenols`)
hist(fc3$Flavanoids)
hist(fc3$`Nonflavanoid phenols`)
hist(fc3$Proanthocyanins)
hist(fc3$`Color intensity`)
hist(fc3$Hue)
hist(fc3$`OD280/OD315`)
hist(fc3$Proline)


#DIAGRAMA DE CAJAS (CADA VARIABLE CUANTITATIVA VS VARIABLE CUALITATIVA)
#DIAGRAMA DE CAJAS FILTRADAS CON CLASE 1
boxplot(fc1$Alcohol~fc1$Class,horizontal = TRUE)
boxplot(fc1$`Malic acid`~fc1$Class,horizontal = TRUE)
boxplot(fc1$Ash~fc1$Class,horizontal = TRUE)
boxplot(fc1$`Alcalinity of ash`~fc1$Class,horizontal = TRUE)
boxplot(fc1$Magnesium~fc1$Class,horizontal = TRUE)
boxplot(fc1$`Total phenols`~fc1$Class,horizontal = TRUE)
boxplot(fc1$Flavanoids~fc1$Class,horizontal = TRUE)
boxplot(fc1$`Nonflavanoid phenols`~fc1$Class,horizontal = TRUE)
boxplot(fc1$Proanthocyanins~fc1$Class,horizontal = TRUE)
boxplot(fc1$`Color intensity`~fc1$Class,horizontal = TRUE)
boxplot(fc1$Hue~fc1$Class,horizontal = TRUE)
boxplot(fc1$`OD280/OD315`~fc1$Class,horizontal = TRUE)
boxplot(fc1$Proline~fc1$Class,horizontal = TRUE)

#DIAGRAMA DE CAJAS FILTRADAS CON CLASE 2
boxplot(fc2$Alcohol~fc2$Class,horizontal = TRUE)
boxplot(fc2$`Malic acid`~fc2$Class,horizontal = TRUE)
boxplot(fc2$Ash~fc2$Class,horizontal = TRUE)
boxplot(fc2$`Alcalinity of ash`~fc2$Class,horizontal = TRUE)
boxplot(fc2$Magnesium~fc2$Class,horizontal = TRUE)
boxplot(fc2$`Total phenols`~fc2$Class,horizontal = TRUE)
boxplot(fc2$Flavanoids~fc2$Class,horizontal = TRUE)
boxplot(fc2$`Nonflavanoid phenols`~fc2$Class,horizontal = TRUE)
boxplot(fc2$Proanthocyanins~fc2$Class,horizontal = TRUE)
boxplot(fc2$`Color intensity`~fc2$Class,horizontal = TRUE)
boxplot(fc2$Hue~fc2$Class,horizontal = TRUE)
boxplot(fc2$`OD280/OD315`~fc2$Class,horizontal = TRUE)
boxplot(fc2$Proline~fc2$Class,horizontal = TRUE)

#DIAGRAMA DE CAJAS FILTRADAS CON CLASE 3
boxplot(fc3$Alcohol~fc3$Class,horizontal = TRUE)
boxplot(fc3$`Malic acid`~fc3$Class,horizontal = TRUE)
boxplot(fc3$Ash~fc3$Class,horizontal = TRUE)
boxplot(fc3$`Alcalinity of ash`~fc3$Class,horizontal = TRUE)
boxplot(fc3$Magnesium~fc3$Class,horizontal = TRUE)
boxplot(fc3$`Total phenols`~fc3$Class,horizontal = TRUE)
boxplot(fc3$Flavanoids~fc3$Class,horizontal = TRUE)
boxplot(fc3$`Nonflavanoid phenols`~fc3$Class,horizontal = TRUE)
boxplot(fc3$Proanthocyanins~fc3$Class,horizontal = TRUE)
boxplot(fc3$`Color intensity`~fc3$Class,horizontal = TRUE)
boxplot(fc3$Hue~fc3$Class,horizontal = TRUE)
boxplot(fc3$`OD280/OD315`~fc3$Class,horizontal = TRUE)
boxplot(fc3$Proline~fc3$Class,horizontal = TRUE)

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

summary(fc1$Proanthocyanins)
sd(fc1$Proanthocyanins)

summary(fc1$`Color intensity`)
sd(fc1$`Color intensity`)

summary(fc1$Hue)
sd(fc1$Hue)

summary(fc1$`OD280/OD315`)
sd(fc1$`OD280/OD315`)

summary(fc1$Proline)
sd(fc1$Proline)

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

summary(fc2$Proanthocyanins)
sd(fc2$Proanthocyanins)

summary(fc2$`Color intensity`)
sd(fc2$`Color intensity`)

summary(fc2$Hue)
sd(fc2$Hue)

summary(fc2$`OD280/OD315`)
sd(fc2$`OD280/OD315`)

summary(fc2$Proline)
sd(fc2$Proline)

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

summary(fc3$Proanthocyanins)
sd(fc3$Proanthocyanins)

summary(fc3$`Color intensity`)
sd(fc3$`Color intensity`)

summary(fc3$Hue)
sd(fc3$Hue)

summary(fc3$`OD280/OD315`)
sd(fc3$`OD280/OD315`)

summary(fc3$Proline)
sd(fc3$Proline)

#DIAGRAMAS DE FRECUENCIAS (VARIABLES CUALITITATIVAS)
tablaFrecuencia=fdt(data$Class)
tablaFrecuencia

#DIAGRAMA DE BARRAS (VARIABLES CUALITATIVAS)
diagramaBarras=barplot(prop.table(table(data$Class)),col=c("yellow","blue","red"),legend.text=c("Vino1","Vino2","Vino3"),ylim=c(0,0.8),main="CLASE DE VINOS")
diagramaBarras

#FIN DE PARTE 1.................................................................

#PARTE 2........................................................................








