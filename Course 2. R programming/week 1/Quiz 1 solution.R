x <- read.csv("/Users/dennis/Desktop/learn R/testing/quiz 1/hw1_data.csv")

#11
names(x)

#12 
head(x, 2)

#13
nrow(x)
ncol(x)

#14
tail(x, 2)

#15
x[["Ozone"]][47]
x[["Ozone"]][[47]]
x$Ozone[47]

#16
bad = is.na(x["Ozone"])
length(x[["Ozone"]][bad])

#17
mean(x[["Ozone"]][!bad])

#18
# caranya ada banyak
mean(subset(x, Ozone > 31 & Temp > 90)[["Solar.R"]])
mean(subset(x, Ozone > 31 & Temp > 90)$Solar.R)

# cannot use x[["column"]], because it does not eliminate NA, still dont know why
mean(x[(x[["Ozone"]] > 31) & (x[["Temp"]] > 90), ][["Solar.R"]])


#19
mean(subset(x, Month == 6)$Temp)
mean(subset(x, Month == 6)[["Temp"]])

#20
# cara 1
temp = subset(x, Month == 5)$Ozone
bad = is.na(temp)
max(temp[!bad])

# cara 2
temp = subset(na.omit(x), Month == 5)
temp
max(temp$Ozone)

# cara 3
temp = subset(x[complete.cases(x), ], Month == 5)
max(temp$Ozone)

# cara 4
temp <- x[rowSums(is.na(x)) == 0, ]
temp = subset(temp, Month == 5)
max(temp$Ozone)
