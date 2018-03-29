## Exploring a Dataset in R

## Example: Dataset = plants

class(plants)   ## is it a data.frame ? 
dim(plants)     ## how many rows and columns are there ?
nrow(plants)    ## only number of rows
ncol(plants)    ## only number of columns
summary(plants)  ## all variables, including min, median, max, mean, 1-3rd quartile
object.size(plants)  ## how much space dataset occupying in memory ?
names(plants)   ## return all variable names (character vector of column)
head(plants)   ## preview top 6 rows of each variable in dataset
head(plants, 10)  ## preview top 10 rows
tail(plants)   ## preview by default, last 10 rows of dataset
tail(plants, 15)  ## preview last 15 rows of dataeset
str()    ## BEST OVERVIEW of DATA combines all other functions
