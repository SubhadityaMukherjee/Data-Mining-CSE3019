#Hierarchical clustering

library(party)
m = read.csv("iris.csv")

clusters = hclust(dist(m[,3:4]),method = "single")
plot(clusters)
