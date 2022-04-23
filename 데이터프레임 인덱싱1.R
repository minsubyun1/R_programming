?state
state.abb
state.area
state.name
state.region

us.state <- data.frame(state.abb, state.name,
                       state.region, state.area,
                       stringsAsFactors = FALSE)
us.state
str(us.state)

us.state[[2]]
str(us.state[[2]])

us.state[2]
str(us.state[2])
us.state[c(2,4)]
us.state[, 2]
us.state[, 2, drop=FALSE]
us.state[, c(2,4)]

us.state[["state.name"]]
us.state$state.name
us.state[, "state.name"]

#¸®½ºÆ® ÀÎµ¦½Ì ¹æ½Ä
us.state[c("state.name", "state.area")]

#Çà·Ä ÀÎµ¦½Ì ¹æ½Ä
us.state[, c("state.name", "state.area")]

state.x77
str(state.x77)
head(state.x77)

states <- data.frame(state.x77)
states
str(states)
row.names(states)
states$Name <- row.names(states)
row.names(states) <- NULL
head(states)

rich.states <- states[states$Income > 5000, 
                      c("Name", "Income")]
rich.states

large.states <- states[states$Area > 100000,
                       c("Name", "Area")]
large.states

merge(rich.states, large.states)
?merge
merge(rich.states, large.states, all=TRUE)
