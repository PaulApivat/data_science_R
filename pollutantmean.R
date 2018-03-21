pollutantmean <- function(directory, pollutant, id = 1:332) {
        fileList <- list.files(path = directory, pattern = ".csv", full.names = TRUE)
        
        ##'directory' is a character vector "/Users/paulapivat/Desktop/specdata" (or length = 1) indicating
        ## the location of the CSV files

        ##'pollutant' is a character vector of length = 1 indicating
        ## the name of the pollutant for which we will calculate the 
        ## mean; either "sulfate" or "nitrate"

        values <- numeric()
        for (i in id) {
                data <- read.csv(fileList[i])
                values <- c(values, data[[pollutant]])
        }

        ##'id' is an integer vector indicating the monitor ID numbers
        ## to be used

        mean(values, na.rm = TRUE)

        ## Return the mean of the pollutant across all monitors list
        ## in the 'id' vector (ignoring NA values - - na.rm = TRUE)
        ## Note: do not round the results
        
}

pollutantmean("/Users/paulapivat/Desktop/specdata", "sulfate")   ## run should get 3.189369

## change arguments - pollutant("sulfate" or "nitrate") - id
pollutantmean <- function(directory, pollutant, id = 23) {
        fileList <- list.files(path = directory, pattern = ".csv", full.names = TRUE)
        values <- numeric()
        
        for (i in id) {
                data <- read.csv(fileList[i])
                values <- c(values, data[[pollutant]])
        }
        mean(values, na.rm = TRUE)
}

pollutantmean("/Users/paulapivat/Desktop/specdata", "nitrate") 