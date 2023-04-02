## in my opinion, basically tapply is pairing two values, like zipping in
### python and then calculate the result depends on function in 3rd argument, 
### but summarize it depends on the cat on 2nd argument.

### additional explanation.
### tapply(a,b,c) is basically sapply(split(a,b), c)

x <- c(rnorm(10), runif(10), rnorm(10,1))

## gl is generate factor levels
## gl(val, #repetition) will give vector from 1 to val as many as #repetition
f <- gl(3, 10) # will make vector consisting of 1,2,3 each 10 times
               # will be used as category for vector x

f

tapply(x, f, mean) # will calculate mean for each category 1,2,3 in vector x

tapply(x, f, mean, simplify=FALSE) # same but omit simplification



## another example
tapply(x, f, range) # find min and max value in each category
## proof
x
