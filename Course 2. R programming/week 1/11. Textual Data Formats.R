## dput-ting R Objects
# Another way to pass data round is by deparsing the R object with dut and reading it back in using dget.

y <- data.frame(a=1, b="a")

y

dput(y)

dput(y, file = "y.R")
new.y <- dget("y.R")
new.y ### why use "new."???

## DUMPING R Objects (ya sebenernya sih sama aja kayak kalau lu abis bikin file.R terus lu source isinya)

p <- "foo"
q <- data.frame(a = 1, b = "a")
dump(c("p", "q"), file = "data.R")
rm(p,q) # remove variable from envoronment
source("data.R")
q
p
