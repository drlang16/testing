# Partial matching of names is allowed with [[ and $

x <- list(aardvard = 1:5) # sama aja kayak "aardvard"
x

x$a

x[["a"]]

x[["a", exact = FALSE]]
