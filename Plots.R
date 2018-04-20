mtcars = read.csv("mtcars.csv")

# Simple Bar Plot 
counts <- table(mtcars$gear)
barplot(counts, main="Car Distribution", 
  	xlab="Number of Gears")

# Simple Horizontal Bar Plot with Added Labels 
counts <- table(mtcars$gear)
barplot(counts, main="Car Distribution", horiz=TRUE,
  names.arg=c("3 Gears", "4 Gears", "5 Gears"))

# Simple Histogram
hist(mtcars$mpg)

# Simple Pie Chart
slices <- c(10, 12,4, 16, 8)
lbls <- c("US", "UK", "Australia", "Germany", "France")
pie(slices, labels = lbls, main="Pie Chart of Countries")

# Boxplot of MPG by Car Cylinders 
boxplot(mpg~cyl,data=mtcars, main="Car Milage Data", 
  	xlab="Number of Cylinders", ylab="Miles Per Gallon")

# Simple Scatterplot
attach(mtcars)
plot(wt, mpg, main="Scatterplot Example", 
  	xlab="Car Weight ", ylab="Miles Per Gallon ", pch=19)