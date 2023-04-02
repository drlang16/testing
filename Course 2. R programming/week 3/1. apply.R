# x <- matrix(rnorm(200), 20, 10)
# 
# ## easier test
# x <- matrix(1:200, 20,10)
# 
# ## find mean of each row in matrix x
# apply(x, 1, mean) #rowMeans
# 
# ## find mean of each column in matrix x
# apply(x, 2, mean) #colMeans
# 
# apply(x, 1, sum) #rowSums
# apply(x, 2, sum) #colSums




# ## example 2
# x <- matrix(rnorm(200), 20, 10)
# 
# ## quantile is a method. Actually you have learned quantile in Statistics.
# ### it is like finding median if quantile probs is 0.5.
# 
# ## 0.25% quantile -> 0.25 * (n+1) -> 2.75. This index 
# ## 0.5%. quantile -> 0.5 * (n+1)
# ## 0.75% quantile -> 0.75 * (n+1)
# 
# # super easy quantile test
# m = c(0, 1 ,2,3,4,5,6,7,8,9,10)
# # rumus
# # ada n = 11 elemen dibawah
# # elements   0    1    2    3    4    5    6    7    8     9    10
# # quantile.  0  0.1  0.2  0.3  0.4  0.5  0.6  0.7  0.8   0.9    1
# # index(n+1) 0  1.2  2.4  3.6  4.8  6.0  7.2  8.4  9.6  10.8   12
# 
# # 0.1 -> 0.1*(12) = 1.2 -> 1
# # 0.25 will be 0.25*(11+1) = 3 -> 2.5
# ### karena index dari quantile 0.25 adalah 3, dan 3 berada diantara 2.4 dan 3.6,
# ### maka quantile 0.25 adalah 2 + (3-2.4)/(3.6-2.4)*(3-2) = 2 + 0.5 = 2.5
# # 0.5 will be 0.5*(11+1) = 6 -> 5
# # 0.75 will be 0.75(11+1) = 9 -> 7.5
# quantile(m, c(0, 0.1, 0.2, 0.25, 0.3, 0.35, 0.4, 0.5, 0.75))
# 
# 
# ## contoh yg agak lebih tidak mudah
# n = c(1 ,2,3,4,5,6,7,8,9,10)
# # ada n = 10 elemen dibawah
# # elements    1       2      3      4      5      6      7      8       9   10
# # quantile.   0   0.111  0.222  0.333  0.444  0.555  0.667  0.778   0.889    1
# # index  ->   0   1.222  2.444  3.666  4.888  6.11   7.332  8.554   9.776   11
# 
# # 0.1 -> 0.1*(11) = 1.1 -> ???
# ### 1 + (1.1 - 0)/(1.222 - 0)*(2 - 1) = 1.90
# # 0.25 -> 0.25*(11) = 2.75 -> 3 + (2.75-2.444)/(3.666-2.444)*(4-3) = 3.25
# # 0.5 will be 0.5*(11) = 5.5 -> 5 + (5.5 - 4.888)/(1.222)*(6-5) = 5.5
# # 0.75 will be 0.75(11) = 8.25 -> 7 + (8.25-7.332)/1.222*(8-7) = 7.75
# quantile(n, c(0, 0.1, 0.2, 0.25, 0.3, 0.35, 0.4, 0.5, 0.75))



# # easy matrix test
# x <- matrix(1001:1200, 10,20)
# # hard matrix test
# x <- matrix(rnorm(200), 20, 10)
# # find quantile for each column in matrix x. 2 means column, 1 means row
# apply(x, 2, quantile, probs = c(0.25, 0.5, 0.75))


# make random 40 numbers and put it to 2x2x10 (3D) matrix
a <- array(1:8, c(2, 2, 2))
apply(a, c(1), sum) #sum of each element in each row in each matrix
apply(a, c(2), sum) #sum of each element in each column in each matrix

apply(a, c(1,2), sum) #sum of each element in each (x,y) position in each matrix
apply(a, c(2,1), sum) #same as above but result will be transposed.

apply(a, c(1,2), mean)
rowMeans(a, dims = 2) #same as apply(a, c(1,2), mean)




