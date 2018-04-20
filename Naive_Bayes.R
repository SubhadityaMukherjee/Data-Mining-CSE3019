#Naive Bayes
library(e1071)
model <- naiveBayes(Survived ~ ., data = Titanic)
class(model)
summary(model)
print(model)
preds <- predict(model, newdata = model)
