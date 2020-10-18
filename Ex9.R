FunctionHist <- function(a, b, c, d, n)
{
  set.seed(25)
  par(mfrow = c(2, 1))
  x <- rnorm(n, mean = a, sd = b)
  e <- rnorm(300, c, d)
  hist(x, freq = F, ylim = c(0, 0.2), col = "seashell2")
  curve(dnorm(x, mean = a, sd = b), col = "gray40", lwd = 2, add = T)      #гладкая линия
  lines(density(x), col = "lightsalmon", lwd = 2)    #добавляем плотность фактического распределения x
  hist(e, freq = F, col = "seashell2")
  curve(dnorm(x, mean = c, sd = d), col = "gray40", lwd = 2, add = T)   
  lines(density(e), col = "lightsalmon", lwd = 2) 
  par(mfrow = c(1, 1))
  asym.x <- mean((x - mean(x))^3)/(sd(x))^3
  asym.e <- mean((e - mean(e))^3)/(sd(e))^3
  return(data.frame('koef X' = asym.x,'koef E' = asym.e)) 
}

