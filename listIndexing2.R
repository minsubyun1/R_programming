product <- list(id="A001",
                name="Mouse",
                price=30000)
product

product[[3]] <- 40000
product[["price"]] <- 40000
product$price <- 40000
product

product[3] <- 40000
product["price"] <- 40000

product[[3]] <- c(30000, 40000)
product[3] <- list(c(30000, 40000))
product

product[1:3] <- list("A002", "Keyboard", 90000)
product

product[[4]] <- c("Domestic", "Export") 
product

product$madein <- c("Korea", "China")
product[["madein"]] <- c("Korea", "China")
product["madein"] <- list(c("Korea", "China"))
product

product[6:9] <- list(0.12, 0.15, 0.22, 0.27)
product

names <- c("Mon", "Tue", "Wed", "Thu", "Fri" ,"Sat", "Sun")

values <- c(842, 729, 786, 751, 844, 851, 702)
traffic.death <- list()
traffic.death
traffic.death[names] <- values
traffic.death

traffic.death[["Fri"]] <- NULL
traffic.death

traffic.death[c("Sat", "Sun")] <- NULL
traffic.death

traffic.death < 750
traffic.death[traffic.death < 750] <- NULL
traffic.death






