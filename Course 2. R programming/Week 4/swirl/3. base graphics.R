data(cars)

?cars

head(cars)

plot(cars)

?plot

plot(x = cars$speed, y = cars$dist)

plot(x = cars$dist, y = cars$speed)

plot(x = cars$speed, y = cars$dist, xlab="Speed")
plot(x = cars$speed, y = cars$dist, xlab="Speed", ylab="Stopping Distance")

plot(cars, main = "My Plot")
plot(cars, sub = "My Plot Subtitle")

#color red
plot(cars, col = 2)

#limiting x-axis to 10 through 15
plot(cars, xlim=c(10,15))

#change points shape to triangle
plot(cars, pch = 2)




data(mtcars)

?boxplot

### important
boxplot(formula = mpg ~ cyl, data = mtcars) ## ~ means versus
names(mtcars)

hist(mtcars$mpg)
