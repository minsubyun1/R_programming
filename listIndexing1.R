product <- list("A002", "Mouse", 30000)
product

product[[3]]
product[[2]]

product[3]
product[2]

class(product[[3]])
class(product[3])

product[3] * 0.9
product[[3]] * 0.9

product[c(1,2)]

product[c(FALSE, TRUE, TRUE)]
product[-1]

product <- list(id="A002", name= "Mouse", price= 30000)
product

product[["name"]]
product$name

product[c("name", "price")]

product[["fourth"]]
product$fourth
product[[4]]

product[c(4,2,5)]
product[c("fourth", "name", "fifth")]

lst <- list(one=1, two=2, three=list(alpha=3.1, beta=3.3))
lst

lst[["three"]]
lst[["three"]][["beta"]]

lst$three$beta




