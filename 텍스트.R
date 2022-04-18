x <- "We have a dream"
x

# nchar 함수에 텍스트 벡터를 지정하면, 그 안에 포함되어 있는 문자의 개수가 출력된다.
# nchar 함수는 텍스트 안의 공백도 하나의 문자로 취급한다.
nchar(x)

# length 함수를 쓰게 되면 텍스트 안의 원소의 개수를 반환한다.
# length란 이름이 마치 텍스트 안의 문자의 개수를 세는 것처럼
# 생각될 수도 있지만, 그게 아니라 문자 벡터의 원소의 개수를 출력.
length(x)

y <- c("we", "have", "a", "dream")
y
# nchar 함수로 각 원소의 문자의 개수를 셀 수 있다.
nchar(y)
length(y)
nchar(y[4])

# 텍스트 벡터를 정렬하기 위해서는 sort() 함수를 이용한다.
letters
sort(letters, decreasing = TRUE)

# 텍스트에 포함된 문자를 소문자 또는 대문자로 변경하는 것은
# 우리가 데이터 전처리를 할 때 흔히 하는 작업이다.

fox.says <- "It is only with the HEART that. one can See Rightly"
tolower(fox.says)
toupper(fox.says)

# 텍스트를 결합하거나 분할하는 일도 텍스트 전처리를 할 때 주로 하는 일.

fox.said = "what is essential is invisible to the eye"
strsplit(fox.said, split=" ")
strsplit(fox.said, split="")

unlist(strsplit(fox.said, split=" "))
fox.said.words <- unlist(strsplit(fox.said, split=" "))
fox.said.words[3]
unlist(strsplit(fox.said, split=" "))[[3]]
strsplit(fox.said, split=" ")[[1]]
strsplit(fox.said, split=" ")[[1]][[3]]

p1 <- "You come at four in the afternoon, then at three I shall begin to be happy"
p2 <- "One runs the risk of weeping a little, if one lets himself be tamed"
p3 <- "What makes the desert beautiful is that somewhere it hides a well"

littleprice <- c(p1, p2, p3)
littleprice
# 이런 텍스트를 벡터로 주고 분할하는 작업을 할 때는 이런 리스트 구조로 나올 수 밖에 없다.
# 왜냐하면 텍스트의 길이는 다 다를 것이기 때문에 그에 따른 분할 결과도 다 다를 것이다.

strsplit(littleprice, " ")
strsplit(littleprice, " ")[[3]][5]

fox.said <- "WHAT IS ESSENTIAL is invisible to the Eye"
fox.said.words <- strsplit(fox.said, " ")[[1]]
unique(fox.said.words)
unique(tolower(fox.said.words))

paste("Everybody", "wants", "to", "fly")

paste(c("Everybody", "wants", "to", "fly"))
fox.said.words
paste(fox.said.words)

paste("Everybody", "wants", "to", "fly", sep="-")
paste("Everybody", "wants", "to", "fly", sep="")
paste0("Everybody", "wants", "to", "fly")

paste(pi, sqrt(pi))
paste("25 dgrees Celsius is", 25*1.8 + 32, "degree Fahrenheit")

heroes <- c("Batman", "Captain America", "Hulk")
colors <- c("Black", "Blue", "Green")
paste(heroes, colors)

paste("type", 1:5)
paste(heroes, "wants", "to", "fly")

paste(c("Everybody", "wants", "to", "fly"))
paste(c("Everybody", "wants", "to", "fly"), collapse = " ")

paste(heroes, "wants", "to", "fly")
paste(heroes, "wants", "to", "fly", collapse = ", and ")

paste(heroes, "wants", "to", "fly", sep="-")
paste(heroes, "wants", "to", "fly", sep="-", collapse=";")

paste(month.abb, 1:12)
paste(month.abb, 1:12, sep="_")
paste(month.abb, 1:12, sep="_", collapse = "-")

outer(c(1,2,3), c(1,2,3))

asian.countries <- c("Korea", "Japan", "China")
info <- c("GDP", "Population", "Area")
outer(asian.countries, info, FUN=paste, sep="-")

out <- outer(asian.countries, info, FUN=paste, sep="-")
as.vector(out)

outer(asian.countries, asian.countries, FUN=paste, sep="-")
x <- outer(asian.countries, asian.countries, FUN=paste, sep="-")
# 대각선의 아래부분을 추출해서 그 반대를 추출하는 것이기에 윗부분만 남고, 중복 조합 제거됨.
x[!lower.tri(x)]

customer <- "Jobs"
buysize <- 10
deliveryday <- 3
paste("Hello ", customer, ", your order of ", buysize,
      " product(s) will be dilivered within ", deliveryday, "day(s).", sep="")

sprintf("Hello %s your order of %s product(s) will be dilivered within %s day(s).",
        customer, buysize, deliveryday)

customer <- c("Jobs", "Gates", "Bezos")
buysize <- c(10, 7, 12)
deliveryday <- c(3, 2, 7.5)

sprintf("Hello %s your order of %s product(s) will be dilivered within %s day(s).",
        customer, buysize, deliveryday)

?sprintf

sprintf("Hello %s your order of %s product(s) will be dilivered within %.1f day(s).",
        customer, buysize, deliveryday)

# substr 함수의 첫번째 인수에 대상 텍스트를 지정하고,
# start 인수에 시작 위치를 지정하고
# stop 인수에 종료 위치를 지정
substr("Data Analytics", start=1, stop=4)
substr("Data Analytics", start=6, stop=14)
substring("Data Analytics", 6)

class <- c("Data Analytics", "Data Mining", "Data Visualization")
substr(class, 1, 4)

countries <- c("Korea, KR", "Unites States, US", "China, CN")
substr(countries, nchar(countries)-1, nchar(countries))

head(islands)
landmasses <- names(islands)
landmasses

grep(pattern="New", x=landmasses)

index <- grep(pattern="New", x=landmasses)
landmasses[index]


grep(pattern="New", x=landmasses, value=TRUE)
grep(pattern=" ", x=landmasses, value=TRUE)

# sub 함수는 일치하는 처음 문자열만 새로운 문자열로 바꿔주고
# gsub 함수는 일치하는 모든 문자열을 찾아서 새로운 문자열로 대체를 해준다.
# 첫번째 인수에 찾고자 하는 문자열을 지정하고, 두번째 인수에 바꾸고자 하는 인수를 지정한다.
# 세번째 인수에 대상이 되는 텍스트 벡터를 지정한다.

txt <- "Data Analytics is useful. Data Analytics is also interesting."

sub(pattern="Data", replacement="Business", x=txt)
gsub(pattern="Data", replacement="Business", x= txt)

x <- c("product.csv", "customer.csv", "supplier.csv")
gsub(".csv", "", x)

# 정규표현식(regular expression)은 특정한 규칙을 갖는 문자열 패턴을 표현하는 방법이다.
# 예를 들어 ABC, ABBA, ACE가 있으면 -> A로 시작하는 문자열이라는 어떤 규칙을 정의하는 것을 정규 표현식이라고 한다.
# 정규표현식은 연속된 문자열로 정의할 수 있다.
# 알파벳, 문자 및 숫자와 특수 문자의 조합으로 구성.
# 정규 표현식에 사용되는 특수한 문자를 메타문자라고 한다.
# \ | () [] {} ^ $ * + ? 
# 이러한 문자들은 문자들의 패턴을 지정할 때 사용할 수 있다.

words <- c("at", "bat", "cat", "chaenomeles", "chase", "chasse","cheap", "check", "cheese", "chick", "hat")

grep("che", words, value=TRUE)
grep("at", words, value=TRUE)

# 대괄호로 감싸면 대괄호 안에 포함된 각 문자와 
# 하나라도 일치하는 문자를 검색한다.
grep("[ch]", words, value=TRUE)
grep("[at]", words, value=TRUE)

grep("ch|at", words, value=TRUE)

grep("ch(e|i)ck", words, value=TRUE)

grep("chas?e", words, value=TRUE)
grep("chas*e", words, value=TRUE)
grep("chas+e", words, value=TRUE)
grep("ch(a*|e*)se", words, value=TRUE)

grep("^c", words, value=TRUE)
grep("t$", words, value=TRUE)

grep("^c.t$", words, value=TRUE)

grep("^[hc]?at", words, value=TRUE)

words2 <- c("12 Dec", "OK", "http://", "<TITLE>Time?</TITLE>", "12345", "Hi there")
grep("[[:alnum:]]", words2, value=TRUE)
grep("[[:alpha:]]", words2, value=TRUE)
grep("[[:digit:]]", words2, value=TRUE)
grep("[[:punct:]]", words2, value=TRUE)
grep("[[:space:]]", words2, value=TRUE)

grep("\\w+", words2, value=TRUE)
grep("\\d+", words2, value=TRUE)
grep("\\s+", words2, value=TRUE)

