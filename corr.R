threshold <- 1000
directory <- "/Users/paulapivat/Desktop/specdata"
source("complete.R")

filenames <- list.files(directory, pattern = ".csv")
all_files <- complete(directory)
cor_vector <- numeric()
for (i in 1:nrow(all_files)) {
        if (all_files[i,2] > threshold) {
                cor_vector <- c(cor_vector, cor(read.csv(filenames[i])$sulfate, read.csv(filenames[i])$nitrate, use = "pairwise.complete.obs")) 
        }
}
cor_vector

corr <- function(directory, threshold = 0) {
        filenames <- list.files(directory, pattern = ".csv")
        all_files <- complete(directory)

        ## 'directory' is a character vector of length 1 indicating
        ## the location of the CSV files
        ## list.files(path = "/Users/paulapivat/Desktop/specdata")
        
        for (i in 1:nrow(all_files)) {
                if (all_files[i,2] > threshold) {
                        cor_vector <- c(cor_vector, cor(read.csv(filenames[i])$sulfate, read.csv(filenames[i])$nitrate, use = "pairwise.complete.obs")) 
                }
        }
        
        ##'threshold' is a numeric vector of length 1 indicating the
        ## number of complete observed observations (on all variables)
        ## required to compute the correlation between nitrate and sulfate; the default is 0
        ## pattern = ".csv" simply reads files with .csv extension in file name
        
        cor_vector
        
        ## Return a numeric vector of correlations
        ## NOTE: Do not round the result!
}