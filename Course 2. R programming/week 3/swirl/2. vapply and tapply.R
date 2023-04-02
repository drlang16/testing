sapply(flags, unique)

vapply(flags, unique, numeric(1)) # will gives an error

## type ok() in browser

vapply(flags, class, character(1)) #will return each type of class of column




?tapply

flags["landmass"]
flags$landmass

table(flags$landmass)

table(flags$animate)

## menghitung mean, sesuai kategori yang ada di flags$landmass
tapply(flags$animate, flags$landmass, mean)

tapply(flags$animate, flags$landmass, sum)



# menyesuaikan values di flags$population sesuai category di flags$red,
### and then print its brief summary
tapply(flags$population, flags$red, summary)
## if you exchange the position, cat will depend on population
tapply(flags$red, flags$population, summary)


tapply(flags$population, flags$landmass, summary)
