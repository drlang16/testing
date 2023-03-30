# Part 2
# Write a function that reads a directory full of files and reports the number 
# of completely observed cases in each data file. The function should return a 
# data frame where the first column is the name of the file and the second 
# column is the number of complete cases. A prototype of this function follows

complete <- function(directory, id=1:332){
  
  # needed for tunneling into exact folder position (if your working directory 
  ## is not folder containing "directory" folder)
  main_path = ("~/Desktop/learn R/testing/Course 2. R programming/quiz 2/")
  
  # # set working directory to a folder called "directory"
  # setwd(paste(main_path, directory, sep=""))
  
  # list all files that has any name but ended with ".csv" in current directory
  ## folder
  file_path = paste(main_path, directory, sep="")
  file_names = list.files(file_path, pattern="*.csv") 
  # '*' means included previous character or at least 0, '.' means any character 
  ## at least 1
  
  for (i in id) {
    # path to file
    filedir = paste(file_path, "/", file_names[i], sep="")
    
    df = read.csv(file=filedir, header=TRUE, sep=",")
    
    if (i==id[1]) {
      observations <- sum(complete.cases(df))
    } 
    else {
      observations = c(observations, sum(complete.cases(df))) 
      # complete.cases returns true if no NA is all columns in one row
    }
  }
  dataf <- data.frame("id" = id, "nobs" = observations)
  dataf
}

complete("specdata", 1:3)