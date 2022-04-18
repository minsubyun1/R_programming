string <- c("data Analytics is useful.", "business Analytics is helpful.", "visualization of data is interesting for data sciencetists")
string

grep(pattern="data", x=string)
grep(pattern="data", x=string, value=TRUE)
string[grep(pattern="data", x=string)]

grep("useful|helpful", string, value=TRUE,
     invert=TRUE)

grepl(pattern="data", x=string)
state.name
grepl("new", state.name, ignore.case=TRUE)
state.name[grepl("new", state.name, ignore.case=TRUE)]
sum(grepl("new", state.name, ignore.case=TRUE))

regexpr(pattern="data", text=string)

gregexpr(pattern="data", text=string)

regmatches(x=string, m=gregexpr("data",string))

regmatches(x=string, m=gregexpr("data",string), invert=TRUE)

sub(pattern="data", replacement = "text", x = string)
gsub(pattern="data", replacement = "text", x = string)

strsplit(x=string, split=" ")
unlist(strsplit(x=string, split=" "))
unique(unlist(strsplit(x=string, split=" ")))
