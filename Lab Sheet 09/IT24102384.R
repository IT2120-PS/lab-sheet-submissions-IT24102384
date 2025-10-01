getwd()
setwd("C:\\Users\\User\\Desktop\\IT24102384")

#part i
y <- rnorm(25, 45, 2)
print(y)

#part ii
t.test(y, mu = 46, alternative = "less")
