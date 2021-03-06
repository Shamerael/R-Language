#4.1 С помощью функции data() загрузите встроенный набор данных:warpbreaks 
data(warpbreaks )


#4.2 Вызовите справку по набору данных (?<имя_набора>) и установите смысл показателей в таблице. 
?warpbreaks 


#4.3  Изучите структуру фрейма данных с помощью функции str(). Сколько
#в нём числовых столбцов? Есть ли переменные-факторы? . 
#272 obs. of  2 variables.
str(warpbreaks )


#4.4  Выведите в консоль первые пять строк, последние пять строк фрейма, а
#также описательные статистики по фрейму
head(warpbreaks , n = 5)
tail(warpbreaks , n = 5)
summary(warpbreaks )


#4.5  Получите вектор с именами столбцов фрейма (?colnames)
r <- colnames(warpbreaks )


#4.6 Оставьте во фрейме только столбцы с количественными показателями. 
warpbreaks [,sapply(warpbreaks ,is.numeric)]


#4.7  Рассчитайте коэффициенты вариации и среднее квартильное расстояние
#по каждому столбцу получившегося фрейма. 
sapply(warpbreaks , sd)/sapply(warpbreaks , mean) #sapply работает со всеми значениями и возвращает вектором, в то время как lapply возвращает списком
#Среднее квартильное расстояние
sapply(warpbreaks , IQR)/2 #Функция IQR позволяет посчитать разницу между первым и третьим квартилями
