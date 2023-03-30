# Part 3
# Write a function that takes a directory of data files and a threshold for
# complete cases and calculates the correlation between sulfate and nitrate for 
# monitor locations where the number of completely observed cases (on all 
# variables) is greater than the threshold. The function should return a vector
# of correlations for the monitors that meet the threshold requirement. If no 
# monitors meet the threshold requirement, then the function should return a 
# numeric vector of length 0. A prototype of this function follows

corr <- function(directory,threshold = 0){
  # initialize var corrvec as empty vector
  corrvec<- vector()
  
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
  
  comp = complete(paste(directory, sep=""))
  
  # find a vector that consists all IDs with complete_cases is higher than 0
  comp = comp['id'][comp['nobs']>threshold]

  for (i in comp) {
    
    # actually if (i>0) is useless if vector comp isn't empty
    if (i>0) {
      filedir = paste(file_path, "/", file_names[i], sep="")
      df = read.csv(file=filedir, header=TRUE, sep=",")
      
      # complete.cases is used to return TRUE in each row if both "sulfate"
      ## and "nitrate" columns contains non NA value.
      # df[["sulfate"]]complete() is used to return the df[["sulfate"]] values
      ## as vector based on bool vector in complete.cases() function
      # actually "complete.cases(df[['sulfate']],df[['nitrate']])" can be
      ## replaced with just "complete.cases(df)"
      
      sul = df[['sulfate']][complete.cases(df[['sulfate']],df[['nitrate']])]
      nit = df[['nitrate']][complete.cases(df[['sulfate']],df[['nitrate']])]
      
      # kalau first element
      if (i==comp[1]) {
        # cor() function is used to find correlation in between two sets of
        ## vectors. use is the method of used to find correlation value.
        corrvec = cor(sul,nit,use="complete.obs")
      }
      # kalau 2nd element dst.
      else{
        corrvec = c(corrvec,cor(sul,nit,use="complete.obs"))
      }
    }
    else{
      corrvec = c(corrvec,0)
    }
  }
  corrvec
}