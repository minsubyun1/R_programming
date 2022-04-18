v <- 1:12
v
dim(v) <- c(3,4)
v
v <- 1:12
matrix(data=v, nrow=3, ncol=4)
# 데이터를 행의 방향으로 채우고 싶을 때
matrix(data=v, nrow=3, ncol=4, byrow=TRUE)

rnames <- c("R1", "R2", "R3")
colnames <- c("C1", "C2", "C3", "C4")
matrix(data=v, nrow=3, ncol=4, dimnames=list(rnames, colnames))


matrix(0, 3, 4)
matrix(NA, 3, 4)

# 행의 개수를 따로 지정하지 않아도, 열의 개수와 원소의 개수를 통해 행의 개수를 자동으로 지정해줌,
matrix(v, ncol=4)

mat <- matrix(v, ncol=4)
str(mat)

dim(mat)
dim(mat)[1]
dim(mat)[2]
nrow(mat)
ncol(mat)
length(mat)

# 벡터를 가지고 행렬을 만드는 방법은
# rbind 함수나 cbind 함수를 이용해서 만들 수 있다.
# rbind 함수는 행의 방향으로 벡터를 결합하고,
# cbind 함수는 열의 방향으로 벡터를 결합한다.
rbind()
cbind()
v1 <- c(1,2,3,4,5)
v2 <- c(6,7,8,9,10)
rbind(v1, v2)
cbind(v1, v2)

# 이 rbind와 cbind 함수는 벡터 간의 결합뿐만 아니라,
# 벡터와 행렬을 결합할 때도 사용할 수 있다.
# 뒤에 배울 데이터프레임을 결합할 때도 사용 가능하다.

cbind(1:3, 4:6, matrix(7:12, 3, 2))
rbind(matrix(1:6, 2, 3), matrix(7:12, 2, 3))
