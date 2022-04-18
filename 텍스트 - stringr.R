string <- c("data Analytics is useful.", "business Analytics is helpful.", "visualization of data is interesting for data sciencetists")
string

install.packages('stringr')

library(stringr)

str_detect(string=string, pattern="data")


str_detect(string, "DATA")

str_detect(string, fixed("DATA", ignore_case=TRUE))


str_detect(c("abz", "ayz","a.z"), "a.z")
str_detect(c("abz", "ayz","a.z"), fixed("a.z"))

str_detect(c("abz","ayz", "a.z"), "a\\.z")

str_locate(string, "data")
str_locate_all(string, "data")

str_extract(string, "data")
str_extract_all(string, "data")

str_extract_all(string, "data", simplify=TRUE)

unlist(str_extract_all(string, "data"))

str_match()
str_match_all()

sentence5 <- sentences[1:5]
sentence5

str_extract(sentence5, "(a|A|the|The) (\\w+)")
str_match(sentence5, "(a|A|the|The) (\\w+)")
str_match_all(sentence5, "(a|A|the|The) (\\w+)")

str_replace(string=string, pattern ="data",
            replacement = "text")
str_replace_all(string=string, pattern="data", replacement="text")

str_split(string, " ")
unlist(str_split(string, " "))
unique(unlist(str_split(string, " ")))

str_split(string, " ", n=3)
str_split(string, " ", n=3, simplify=TRUE)

str_length(string)

str_count(string, "data")
str_count(string, "\\w+")

str_pad(string=c("a", "abc", "abcde"), width=6, side="left", pad=" ")

mon <- 1:12
mon
str_pad(mon, width = 2, side= "left", pad="0")

str_trim()

str.pad <- str_pad(string, 
                   width=max(str_length(string)),
                   side="both", pad=" ")
str.pad

str_trim(str.pad, side="both")

str_c("data", "mining", sep=" ")

str.mining <- str_c(c("data mining", "text mining"),
                    "is useful", sep=" ")
str.mining

str_c(str.mining, collapse = ": ")
cat(str_c(str.mining, collapse = "\n"))

str_sub(string=str.mining, start=1, end=4)

str_sub(str.mining, 5, 5) <- "-"
str.mining

str_sub("abcdefg", start=-2)
str_sub("abcdefg", end=3)
