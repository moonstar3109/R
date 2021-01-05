data(package = .packages(all.available = TRUE))

library(ggplot2)
mid <- as.data.frame(midwest)
mid
colnames(mid)[5] <- "total"
colnames(mid)[10] <- "asian"

mid$perasian <- (mid$asian/mid$total)*100
head(mid)

hist(table(mid$perasian))

test <- mean(mid$perasian)
mid$group <- ifelse(mid$perasian >= test,"large",
                    "small")

mid
table(mid$group)
