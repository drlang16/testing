library(datasets)
data(iris)

?iris

iris

# 1
df = iris[iris$Species == "virginica", ]
df

mean(df$Sepal.Length) #answer is 7


# 2
apply(iris[, 1:4], 2, mean) # margin = 1 means apply function to row
                            # margin = 2 means apply function to column
### why using iris[, 1:4] not just using iris or iris[, 1:5]?
#### because in column 5 "species", the data class is not numerical type,
#### so you cannot apply the function "mean", and it will induce errors.


# 3
library(datasets)
data(mtcars)

?mtcars

sapply(split(mtcars$mpg, mtcars$cyl), mean)
tapply(mtcars$mpg, mtcars$cyl, mean)

with(mtcars, tapply(mpg, cyl, mean))
## "with" function explained
str(with)
?with
### pokoke yang gua ngerti, with itu, kalau lu masukin dataframe di arg 1, maka
#### dia kayak ngelepas tiap column, sehingga jadi independent, maka ketika,
#### lo call di tapply, lo ga perlu lagi sebut si dataframe di arg 1 itu. lu
#### cukup call nama column nya aja

# 4
a = mean(mtcars[mtcars$cyl == 4, ]$hp)
b = mean(mtcars[mtcars$cyl == 8, ]$hp)
b-a #answer 127


# 5
debug(ls)
ls()
