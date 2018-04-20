#K means
data = iris
data$Species=NULL
hmm=kmeans(data,centers = 4)
print(hmm)
table(iris$Species,hmm$cluster)
plot(data[c("Sepal.Length", "Sepal.Width")], col = hmm$cluster)
