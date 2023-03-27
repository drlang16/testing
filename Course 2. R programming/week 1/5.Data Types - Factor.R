x <- factor(c("yes", "yes", "no", "yes", "no"))
x

table(x)

unclass(x)


y <- factor(c("yes", "yes", "no", "yes", "no"),
            levels = c("yes", "no"))
y
