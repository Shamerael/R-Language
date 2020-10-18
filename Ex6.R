#Упражнение 6
png("plot-ex06.png", width = 600)
par(mfrow = c(2, 1))
x <- rnorm(n = 300, mean = 18, sd = 2)
e <- rnorm(300, 0, 5)
layout(matrix(c(1, 1, 2, 2),2, 2, byrow = T))
hist(x, freq = F, col = "seashell2")
curve(dnorm(x, mean = 18, sd = 2), col = "gray40", lwd = 2, add = T)      #гладкая линия
lines(density(x), col = "lightsalmon", lwd = 2)    #добавляем плотность фактического распределения x
hist(e, freq = F, col = "seashell2")
curve(dnorm(x, mean = 0, sd = 5), col = "gray40", lwd = 2, add = T)   
lines(density(e), col = "lightsalmon", lwd = 2) 
par(mfrow = c(1, 1))
dev.off()

