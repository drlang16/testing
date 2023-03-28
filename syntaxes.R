#class
#unclass -> number of days since 1970-01-01

#Sys.Date()
#Sys.time()
#as.POSIXlt(Sys.time())
#str(unclass())
#weekdays(Sys.Date())
#months(`time or date`)
#quarters(`time or date`)
#t3 <- "October 17, 1986 08:24"
#strptime(t3, "%B %d, %Y %H:%M")
#Sys.Time() > t1
#Sys.Time() - t1
#difftime(Sys.time(), t1, units = 'days')

#y = NULL
#is.null(y)

# which()
# any()
# all()

# submit() same as source


#args(function)


#sd()
#floor()
#sum()
#median()

#evaluate(function(x){x+1}, 6)

#paste()
#paste(, sep=" ")

# telegram <- function(...){
#   paste("START", ..., "STOP")
# }
# telegram("goblok", "anjing", "babi")
# telegram(c("goblok", "anjing", "babi"))


# mad_libs <- function(...){
#   # Do your argument unpacking here!
#   args <- list(...)
#
#   
#   place <- args[["place"]] or $place
#   adjective <- args[["adjective"]]
#   noun <- args[["noun"]]
#   
#   # Don't modify any code below this comment.
#   # Notice the variables you'll need to create in order for the code below to
#   # be functional!
#   paste("News from", place, "today where", adjective, "students took to the streets in protest of the new", noun, "being installed on campus.")
# }

# mad_libs <- function(...){
#   # Do your argument unpacking here!
#   args <- c(...)
#
#   
#   place <- args[["place"]]
#   adjective <- args[["adjective"]]
#   noun <- args[["noun"]]
#   
#   # Don't modify any code below this comment.
#   # Notice the variables you'll need to create in order for the code below to
#   # be functional!
#   paste("News from", place, "today where", adjective, "students took to the streets in protest of the new", noun, "being installed on campus.")
# }


# "%p%" <- function(){ # Remember to add arguments!
#   paste(left, right, sep = " ")
# }
# "I" %p% "love" %p% "R!"