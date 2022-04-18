v <- 1:12
mat <- matrix(v, 3, 4)
mat
str(mat)

mat[1,]
mat[,3]

mat[1,,drop=FALSE]
mat[,3,drop=FALSE]

mat[2:3,]
mat[,3:4]
mat[1:2]
mat[1:2,2:3]
mat[c(1,3),]

mat[,-c(2,3)]
mat
mat[1,3] <- 77
mat

mat[2,] <- c(22,55)
mat

mat[2:3, 3:4] <- c(1,2,3,4)
mat

city.distance <- c(0,331,238,269,195,
                   331,0,95,194,189,
                   238,95,0,171,130,
                   269,194,171,0,77,
                   195,189,130,77,0)
city.distance
city.distance.mat <- matrix(city.distance, 5, 5, byrow=TRUE)
city.distance.mat

colnames(city.distance.mat) <- c("Seoul","Busan","Daegu","Gwangju","Jeonju")
rownames(city.distance.mat) <- c("Seoul","Busan","Daegu","Gwangju","Jeonju")
colnames(city.distance.mat)
rownames(city.distance.mat)
city.distance.mat

city.distance.mat["Seoul","Busan"]
city.distance.mat[,"Seoul"]
city.distance.mat[c("Seoul","Gwangju"),]
