# 데이터프레임의 특수한 형태인 tibble 데이터 구조를 생성하고
# 다루는 데 이용할 수 있는 tibble 패키지를 살펴보자.
# tibble은 데이터 프레임의 특수한 형태로서 표현의 간결성과
# 대용량 데이터셋 처리의 용이성으로 인해 전통적인 데이터 프레임 대신 종종 사용된다.
# tibble은 데이터 프레임이 갖고 있는 특성을 그대로 가지고 있기 때문에
# 기존의 데이터 프레임과 호환해서 사용할 수 있다.
install.packages("tibble")
library(tibble)

v1 <- c("A001", "A002", "A003")
v2 <- c("Mouse", "Keyboard", "USB")
v3 <- c(30000, 90000, 50000)
product <- tibble(id=v1, name=v2, price=v3)
str(product)
product 

tribble(
  ~id, ~name, ~price,
  "A001", "Mouse", 30000,
  "A002", "Keyboard", 90000,
  "A003", "USB", 50000
)

tb <- tibble(id=c(1,2,3),
             data=list(tibble(x=1, y=2),
                       tibble(x=4, y=6:7),
                       tibble(x=10)))
tb
tb$data
tb$data[[2]]

str(iris)
head(iris)
as_tibble(iris)

install.packages('Lahman')
library(Lahman)
str(Batting)
head(Batting)
Batting.tbl <- as_tibble(Batting)
Batting.tbl

print(Batting.tbl, n=20)
print(Batting.tbl, n=3, width=Inf)

class(Batting.tbl)
Batting.df <- as.data.frame(Batting.tbl)
Batting.df
class(Batting.df)
