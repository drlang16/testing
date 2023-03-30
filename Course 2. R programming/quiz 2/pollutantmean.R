# Write a function named 'pollutantmean' that calculates the mean of a pollutant 
# (sulfate or nitrate) across a specified list of monitors. The function 
# 'pollutantmean' takes three arguments: 'directory', pollutant', and 'id'. 
# Given a vector monitor ID numbers, 'pollutantmean' reads that monitors' 
# particulate matter data from the directory specified in the 'directory' 
# argument and returns the mean of the pollutant across all of the monitors, 
# ignoring any missing values coded as NA. A prototype of the function is as 
# follows

pollutantmean <- function(directory, pollutant, id=1:332) {
  
  # needed for tunneling into exact folder position (if your working directory 
  # is not folder containing "directory" folder)
  main_path = ("~/Desktop/learn R/testing/Course 2. R programming/quiz 2/")
  
  # # set working directory to a folder called "directory"
  # setwd(paste(main_path, directory, sep=""))
  
  # list all files that has any name but ended with ".csv" in current directory 
  # folder
  file_path = paste(main_path, directory, sep="")
  file_names = list.files(file_path, pattern="*.csv") 
  # '*' means included previous character or at least 0, '.' means any character 
  ## at least 1
  
  # for i in vector id
  for (i in id) {
    # path to file
    filedir = paste(main_path, directory, "/", file_names[i], sep="")
    
    # if i equal to first element in vector id
    if (i == id[1]) {
      df = read.csv(file=filedir, header=TRUE, sep=",")
      # sep="," is actually unnecessary; header=TRUE also unnecessary
    }
    else {
      # r bind to bind row into previous df
      df = rbind(df, read.csv(file=filedir, header=TRUE, sep=","))
      # sep="," is actually unnecessary; header=TRUE also unnecessary
    }
  }
  
  # remove all NA value and calculate mean of certain column
  means = mean(df[[pollutant]], na.rm = TRUE)
  means
}

pollutantmean("specdata", "sulfate", 1:10)