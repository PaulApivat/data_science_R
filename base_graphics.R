## Base Graphics

plot()  ## scatterplot of data frame
plot(x = cars$speed, y = cars$dist)

## Examples

## Title and subtitle
plot(cars, main = "My Plot", sub = "My Plot Subtitle")  

## Add plotted points colored in red
plot(cars, main = "My Plot", sub = "My Plot Subtitle", col = 2)

## limiting the x-asix to 10 through 15
plot(cars, xlim = c(10,15))

## change plot points to triangles
plot(cars, pch = 2)

## Load data frame
data()

## Boxplot data
boxplot()

## S3 method for class 'formula'
boxplot(formula, data = NULL, ..., subset, na.action = NULL,
        drop = FALSE, sep = ".", lex.order = FALSE)

# boxplot(formula = mpg ~ cyl, data = mtcars)

## Histograms
hist()

hist(mtcars$mpg)  ##histogram of subset of mtcars data, mpg variable

