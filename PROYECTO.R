


data=read.csv(url("http://archive.ics.uci.edu/ml/machine-learning-databases/wine/wine.data"), header = FALSE)


names(data)=c('Class','Alcohol','Malic acid','Ash','Alcalinity of ash','Magnesium','Total phenols','Flavanoids','Nonflavanoid phenols','Proanthocyanins','Color intensity','Hue','OD280/OD315','Proline')


library(dplyr)
library(datasets)
library(fdth)



fc1=data %>% filter(data$Class==1)

fc1

#histograma variables cuantitativas
hist(fc1$Alcohol)

#diagrama de caja , cada variable cuantivativa vs variable cualitativa


boxplot(fc1$Alcohol~fc1$Class,horizontal = TRUE)
boxplot(fc1$`Malic acid`~fc1$Class,horizontal = TRUE)



#medidas estadisticas de cada variable cuantitativa

summary(fc1$Alcohol)
sd(fc1$Alcohol)




#diagrama de frecuencia , solo este


tbt=fdt(data$Class)
tbt

#diagrama de barras,solo este


barplot(prop.table(table(data$Class)),col=c("yellow","blue","red"),legend.text=c("Vino1","Vino2","Vino3"),ylim=c(0,0.8),main="CLASE DE VINOS")













fc2=data %>% filter(data$Class==2)


fc3=data %>% filter(data$Class==3)



