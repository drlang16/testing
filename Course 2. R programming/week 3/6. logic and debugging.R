printmessage <- function(x) {
  if(x>0) {
    print("x is greater than 0")
  }
  else {
    print("x is less than or equal to zero")
  }
  invisible(x) # this is returning the value without printing
}

printmessage(10)

# printmessage(NA)


######### CASE 2 #################
printmessage2 <- function(x) {
  if(is.na(x)) {
    print("x is missing value")
  }
  else if(x>0) {
    print("x is greater than 0")
  }
  else {
    print("x is less than or equal to zero")
  }
  invisible(x) # this is returning the value without printing
}

g = log(-1)
printmessage2(10)
printmessage2(-1)
printmessage2(g)
printmessage(NaN)
printmessage(NA)
