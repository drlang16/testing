### type of operators
# [   returns object of the same class as the original
# [[  extract elements of a list or a data frame, used to extract a single element and the class
# $   used to extract elements of a list or data frame by name

## example
x <- c("a", "b", "c", "c", "d", 'a')
x[1]
x[2]
x[3]
x[1:4]
x[x>"a"]
## pada dasarnya dia sama kayak pandas di python

u <- x > "a"
u

x[u] #only call True value
