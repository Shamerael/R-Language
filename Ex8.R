FunctionGraf <- function(a, b, c, d, n) #задаем функцию с аргументами 
{ 
  set.seed(25)
  x <- rnorm(n , mean = a, sd = b)
  e <- rnorm(n, c, d)
  y <- 100 - 12*x + e
  layout(matrix(c(1,2,2,1,2,2,4,3,3),nrow = 3,byrow = T))
  boxplot(y,pch = 20,cex = 1,col = "royalblue")
  plot(x,y,pch = 20,cex = 2,col = "royalblue")
  boxplot(x,pch = 20,cex = 1,horizontal = T,col = "royalblue")
}
