complete <- function(directory, id = 1:332) {
        ## 'directory' is a character vector of length 1 indicating  
        ## the location of CSV files
        ## 'directory' is "/Users/paulapivat/Desktop/specdata"
    
        fileList <- list.files(path = directory, pattern = ".csv", full.names = TRUE)
        ## list.files(path = "/Users/paulapivat/Desktop/specdata")

        nobs <- numeric()     
        ##initialize nobs variable to be numeric() vector to store all files
        
        ## 'id' is an integer vector indicating the monitor ID numbers
        ## to be used
        
        for (i in id) {
                data <- read.csv(fileList[i])   
                ##read filelist, looping thru i, and store in data
                nobs <- c(nobs, sum(complete.cases(data)))    
                ## store vector of previous nobs, sum all complete cases
        }
        
        data.frame(id, nobs)
        ## Return a data frame of the form:
        ## id nobs
        ## 1  117
        ## 2  1041
        ## ...
        ## where 'id' is the monitor ID number and 'nobs' is the 
        ## number of complete cases
}

## read.csv()            for reading csv files
## options(max.print = 100000)     #for printing out all rows in data
## complete.cases()      #print vector of TRUE (complete data) & FALSE
## sum(complete.cases()) #sum number of complete data (i.e., TRUE)
## list.files(path = "", pattern = "", full.names = )     list out files in "specdata"
## list.files(path = "/Users/paulapivat/Desktop/specdata", pattern = ".csv", full.names = TRUE)
## fileList <- list.files(path = "", pattern = "", full.names = )
## sum(complete.cases(read.csv(fileList[i])))        putting it all together

## nobs <- numeric()     assign numeric() vector to nobs
## nobs <- c(nobs, sum(complete.cases(read.csv(fileList[i]))))
## assign vector to nobs; take previous nobs, remembers it; concatenate sum of all cases