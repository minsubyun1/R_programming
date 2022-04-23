head(iris)

r <- iris$Sepal.Length / iris$Sepal.Width
head(r)

r <- with(iris, Sepal.Length/Sepal.Width)
head(r)

with(iris, {
  print(summary(Sepal.Length))
  plot(Sepal.Length, Sepal.Width)
  plot(Petal.Length, Petal.Width)
})

with(iris, {
  stats <- summary(Sepal.Length)
  stats
})
stats

with(iris, {
  stats.nokeep <- summary(Sepal.Length)
  stats.keep <<- summary(Sepal.Length)
})
stats.nokeep
stats.keep

iris$Sepal.Ratio <- iris$Sepal.Length / iris$Sepal.Width
head(iris)
iris <-  within(iris, Sepal.Ratio <- Sepal.Length / Sepal.Width)
head(iris)

attach(iris)
search()

r <- Sepal.Length/Sepal.Width
head(r)

detach(iris)
search()

attach(iris)
iris$Sepal.Length <- 0
head(iris$Sepal.Length)
head(Sepal.Length)
detach(iris)

attach(iris)
Sepal.Width <- Sepal.Width * 10
head(Sepal.Width)
ls()
head(iris$Sepal.Width)
detach(iris)
rm(Sepal.Width)

Sepal.Length <- c(4.5, 5.3, 6.7)
Sepal.Length
attach(iris)

plot(Sepal.Length, Sepal.Width)
