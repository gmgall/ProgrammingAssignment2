## Defining two simple matrices to test the makeCacheMatrix()
## and cacheSolve() functions

## m1
##    1  3  3        7  -3  -3
##    1  4  3  -->  -1   1   0
##    1  3  4       -1   0   1
##
m1 <- matrix(c(1, 1, 1, 3, 4, 3, 3, 3, 4), nrow = 3, ncol = 3)

## m2
##   4  3         -2   3
##   3  2   -->    3  -4
##
m2 <- matrix(c(4, 3, 3, 2), nrow = 2, ncol = 2)
