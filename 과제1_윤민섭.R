#1번
test1 <- c(9,4,7,9,10)
test2 <- c(10, 5, 8, 7, 9)
test3 <- c(8,3,6,9,10)
pmin(test1,test2,test3)

#2번
days <- factor(c("MON","Tue", "Wed", "Thu", "Fri", "Sat", "Sun"))
count <- c(101, 55, 40, 65, 23, 112, 135)
days
#(a) 답안
library(forcats)

fct_relevel(days, "Sun")
#(b) 답안
fct_reorder(days, .x=count, .desc=TRUE)

#3번
mtx <- matrix(1:20000, 2000, 1000)
mtx
mtx[999,5]
