library(ggplot2)
temp <- as.data.frame(mpg)

colnames(temp)[8] <- "city"
colnames(temp)[9] <- "highway"
head(temp)

temp$total <- (temp$city+temp$highway)/2
mean(temp$total)

temp$test <- ifelse(temp$total >= 24,"A",
                   ifelse(temp$total >= 20,"B","C"))


temp

head(temp)
