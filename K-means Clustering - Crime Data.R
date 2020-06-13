



crime_data <- read.csv('D:\\Data Science\\Excelr\\Assignments\\Assignment\\Clustering\\crime_data.csv')

data <- scale(crime_data[2:5])
plot(data)

#Elbow Chart
wss <- c()
for (i in 2:15) wss[i] <- sum(kmeans(data, centers = i)$withinss)
plot(1:15,wss,type = "b", xlab = "No of Clusters", ylab = "Avg Distance")

### Cluster algorithm building
km <- kmeans(data, 8)
km$centers
km$cluster
##Animation
install.packages("animation")
library(animation)
windows()
km <- kmeans.ani(data, 8)
