setwd("C:\\Users\\User\\Desktop\\IT24102384")

#Exercise_1
p1 <- punif(25, min = 0, max = 40) - punif(10, min = 0, max = 40)
p1

#Exercise_2
p2 <- pexp(2, rate = 1/3)
p2

#Exercise_3
p3_i <- 1 - pnorm(130, mean = 100, sd = 15)
p3_i


p3_ii <- qnorm(0.95, mean = 100, sd = 15)
p3_ii
