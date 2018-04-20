#Apriori

library(arules)
library(arulesViz)
m = read.csv('Groc.csv')
d = data.frame(sapply(m, as.factor))
rules = apriori(d,parameter = list(support=0.01,confidence=0.8))
inspect(head(sort(rules,by="lift”),5))