a <- matrix(1:9, 3, 3, byrow = T)
C <- a[, 1:2]
R <- a[1:2,]
M <- solve(t(C)%*%C)%*%t(C)%*%a%*%t(R)%*%solve(R%*%t(R))

C%*%M%*%R

solve(a[1:2, 1:2])
