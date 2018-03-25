## Using: lapply tapply mapply sapply

## Source: R Programming_Week 3 Quiz

## Load dataset
library(datasets)
data(iris)

## explore dataset - use summary() and str()
summary(iris)
str(iris)

> str(iris)
'data.frame':	150 obs. of  5 variables:
$ Sepal.Length: num  5.1 4.9 4.7 4.6 5 5.4 4.6 5 4.4 4.9 ...
$ Sepal.Width : num  3.5 3 3.2 3.1 3.6 3.9 3.4 3.4 2.9 3.1 ...
$ Petal.Length: num  1.4 1.4 1.3 1.5 1.4 1.7 1.4 1.5 1.4 1.5 ...
$ Petal.Width : num  0.2 0.2 0.2 0.2 0.2 0.4 0.3 0.2 0.2 0.1 ...
$ Species     : Factor w/ 3 levels "setosa","versicolor",..: 1 1 1 1 1 1 1 1 1 1 ...

## str() tells you its 150 observations (rows) and 5 variables (columns)
## variables are numerical

> summary(iris)
Sepal.Length    Sepal.Width     Petal.Length    Petal.Width   
Min.   :4.300   Min.   :2.000   Min.   :1.000   Min.   :0.100  
1st Qu.:5.100   1st Qu.:2.800   1st Qu.:1.600   1st Qu.:0.300  
Median :5.800   Median :3.000   Median :4.350   Median :1.300  
Mean   :5.843   Mean   :3.057   Mean   :3.758   Mean   :1.199  
3rd Qu.:6.400   3rd Qu.:3.300   3rd Qu.:5.100   3rd Qu.:1.800  
Max.   :7.900   Max.   :4.400   Max.   :6.900   Max.   :2.500  
Species  
setosa    :50  
versicolor:50  
virginica :50  

## summary() provides min-max, 1st-3rd quartile, median-mean of each variable
## final variable species has 3 levels

## what R code returns a vector of the means of the variables 'Sepal.Length', 'Sepal.Width', 'Petal.Length', and 'Petal.Width'?
> apply(iris[,1:4],2,mean)

## apply takes 3 arguments  apply(array, margin, ...)
iris[,1:4]   ##vector in data set with four variables (columns)

apply(, 2,...)    ##second argument margin

## load mtcars dataset in R
library(datasets)
data(mtcars)

## How can one calculate the average miles per gallon (mpg) by number of cylinders in the car (cyl)?
with(mtcars, tapply(mpg, cyl, mean)) ## with() tapply()
tapply(mtcars$mpg, mtcars$cyl, mean) ## tapply() use $ $
sapply(split(mtcars$mpg, mtcars$cyl), mean) ## sapply() split() use $ $

## What is the absolute difference between avg horsepower 4-cylinder and 8-cylinder car?
tapply(mtcars$hp, mtcars$cyl, mean)   ## tapply()   $hp by $cyl  


