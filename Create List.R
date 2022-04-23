list(0.6826, 0.9544, 0.9974) 

list(1.23, "Apple", c(2,3,5,7),
     matrix(1:6, ncol=3), mean)

lst <- list()
lst
lst[[1]] <- 1.23
lst[[2]] <- "Apple"
lst[[3]] <- c(2,3,5,7)
lst[[4]] <- matrix(1:6, ncol=3)
lst[[5]] <- mean
lst

lst <- list(0.6826, 0.9544, 0.9974)
lst
names(lst) <- c("sigma1", "sigma2", "sigma3")
lst
names(lst)

length(lst)

worldcup1 <- list("Brazil", "South Africa", "Germany")
worldcup2 <- list("Korea-Japan", "France", "USA")
worldcup1
worldcup2

c(worldcup1, worldcup2)

a <- list(1,2,3,4,5,6,7)
a
mean(a)

unlist()

mean(unlist(a))






