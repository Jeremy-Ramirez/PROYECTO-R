#que pex
#truenin me la pela
#el trueno pai ft wosito


data=read.csv(url("http://archive.ics.uci.edu/ml/machine-learning-databases/wine/wine.data"), header = FALSE)
data

names(data)=c('Class','Alcohol','Malic acid','Ash','Alcalinity of ash','Magnesium','Total phenols','Flavanoids','Nonflavanoid phenols','Proanthocyanins','Color intensity','Hue','OD280/OD315','Proline')

data

library(dplyr)
library(datasets)

data %>% filter(data$Class==1)


data %>% filter(data$Class==2)


data %>% filter(data$Class==3)



