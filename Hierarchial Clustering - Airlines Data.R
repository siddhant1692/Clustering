# Data Load

mydata1 <- read.csv('D:\\Data Science\\Excelr\\Assignments\\Assignment\\Clustering\\EastWestAirlines.csv')

mydata <- scale(mydata1[,2:12])
d <- dist(mydata, method = "euclidean") # Computing the distance matrix
fit <- hclust(d, method = "average") #Computing the algorithm # try with centroid
plot(fit) #display dendrogram
groups <- cutree(fit, k=4) #cut tree into 4 clusters
#draw dendrogram with red borders around the 5 clusters
rect.hclust(fit, k=4, border = "red")
#attach the cluster number to universities
clusters=data.frame('ID'=mydata1[,1],'Cluster'=groups)

fit1 <- hclust(d, method = "centroid") #Computing the algorithm # trying with centroid
plot(fit1) #display dendrogram
groups <- cutree(fit1, k=4) #cut tree into 4 clusters
#draw dendrogram with red borders around the 5 clusters
rect.hclust(fit1, k=4, border = "red")
#attach the cluster number to universities
clusters1=data.frame('ID'=mydata1[,1],'Cluster'=groups)

write.csv(as.data.frame(clusters), file = "clusters-average.csv")
write.csv(as.data.frame(clusters1), file = "clusters-centroid.csv")
