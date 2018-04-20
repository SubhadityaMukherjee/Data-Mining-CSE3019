#Decision Tree

library(party)
m = read.csv("iris.csv")
sam = sample(2,nrow(m),replace = TRUE,prob=c(0.7,0.3))
train = m[sam==1,]
test = m[sam ==2,]
my= species ~ sepal_length + sepal_width + petal_length + petal_width
tr = ctree(my,data = train)

table(predict(tr),train$species)
plot(tr)

#Random Forest
library(party)
m = read.csv("iris.csv")
sam = sample(2,nrow(m),replace = TRUE,prob=c(0.7,0.3))
train = m[sam==1,]
test = m[sam ==2,]
my= species ~ sepal_length + sepal_width + petal_length + petal_width
tr = randomForest(my)

table(predict(tr),train$species)
plot(tr)