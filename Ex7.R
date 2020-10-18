png("plot-ex07.png", width = 600)
dfRegions <-  read.csv2("regions.csv", stringsAsFactors = T)
dfRegions
x <- c(dfRegions$year_2005)
y <- c(dfRegions$year_2013)
z <- c(dfRegions$year_2017)
XYZ <- cbind(x/sum(x), y/sum(y), z/sum(z))
colnames(XYZ) <- c("2005", "2013", "2017")
rownames(XYZ) <- dfRegions$финансы
barplot(XYZ, main = "Самарская область", beside = F,col = cm.colors(4,alpha = 1))
legend("topright", legend = rownames(XYZ), fill = cm.colors(4, alpha = 1))
dev.off()
