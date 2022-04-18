mtx <- matrix(1:6, 2, 3)
mtx
mtx + 1
mtx - 1
mtx * 2
mtx / 2

a <- matrix(1:6, 2, 3)
b <- matrix(6:1, 2, 3)
a
b
a + b
a - b
a * b
a / b
# 위와 같이 행렬 간의 사칙 연산을 위해서는 행렬의 크기가 서로 같아야 함.
# 즉 행의 개수와 열의 개수가 같아야 한다.
c <- matrix(6:1, 3, 2)
c
a + c
# 그런데 앞에 했던 사칙연산 중 곱셈은 행렬의 대응되는 원소끼리
# 곱하는 건데, 이런 사칙연산은 우리가 일반적으로 알고 있는 행렬 곱셈의 연산 방식과 다르다.
# 곱셉 연산자인 *을 행렬에 사용하면 일반적인 곱셈이 아닌, 행렬의 각 원소 간의 곱셈으로 수행된다.
# 수학에서 얘기하는 일반적인 행렬 곱셈을 하려면 %*% 연산자를 이용해야 한다.
# 행렬 곱을 하려면, 이를 위한 조건을 충족해야 하는데, 
# 행렬 곱셈을 하고자 하는 첫번째 행렬의 열의 개수와 두번째 행렬의 행의 개수가 서로 일치해야한다.
a <- matrix(1:6, 2,3)
a
b <- matrix(1:6, 3, 2)
b
 a %*% b
c <- matrix(1:6, 2, 3)
c

mtx <- matrix(1:6, 2, 3)
mtx 
mtx %*% 1:3
mtx %*% 1:2
1:2 %*% mtx

mtx <- matrix(1:6, 2, 3)
mtx

mtx + 1:3

mtx
rowSums(mtx)
colSums(mtx)
rowMeans(mtx)
colMeans(mtx)

mtx
t(mtx)

1:5
t(1:5)

mtx
mtx[2,]
t(mtx[2,])



