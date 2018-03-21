
getwd() ##working directory
list.files("diet_data")  ##list all files
andy <- read.csv("diet_data/Andy.csv")    ##store particular file
head(andy)  ##display first five lines
length(andy) ##how many rows
dim(andy)   ##how many rows and columns
str(andy)  ##describe data frame
summary(andy)   ##summarize data
names(andy)  ##column names
andy[1, "Weight"]  ##SUBSETTING first in Weight column for andy data.frame
andy[which(andy$Day == 30), "Weight"]   ##SUBSETTING 30th in Day, for Weight column
andy$Day   ##list all Day in andy data frame
andy$Day == 15    ##query all entries in andy$Day until matches '15' which is TRUE
subset(andy$Weight, andy$Day==30)  ##SUBSETTING function andy's weight on 30th day
list.files("diet_data", full.names = TRUE)   ##get file path
files_full <- list.files("diet_data", full.names = TRUE)   ##store all files in diet_data with full names
andy_david <- rbind(andy, read.csv(files_full[2]))
## BIND andy data frame with second entry of full dataset (david), store in new variable andy_david
day_25 <- andy_david[which(andy_david$Day ==25), ]   
## find 25th day for andy_david data frame; need two arguments

dat <- data.frame() ##initialize new data frame in dat
for (i in 1:5) {
             dat <- rbind(dat, read.csv(files_full[i]))
         }
## Loop through all five data files, BIND empty dat with LOOP through all files

median(dat$Weight)  ##median of Weight column in dat data frame

## Combine everything

weightmedian <- function(directory, day)  {
        files_list <- list.files(directory, full.names=TRUE)   #creates a list of files
        dat <- data.frame()                             #creates an empty data frame
        for (i in 1:5) {                                
                #loops through the files, rbinding them together 
                dat <- rbind(dat, read.csv(files_list[i]))
        }
        dat_subset <- dat[which(dat[, "Day"] == day),]  #subsets the rows that match the 'day' argument
        median(dat_subset[, "Weight"], na.rm=TRUE)      #identifies the median weight 
        #while stripping out the NAs
}

