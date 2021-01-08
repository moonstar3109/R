test <- read.csv("data/test.csv")

library(ggplot2)
library(dplyr)
data <- test
data <- rename(data,
       c("region" = "지역명",
         "area" = "규모구분",
         "year" = "연도",
         "month" = "월",
         "price" = "분양가격..."))

head(data)

table(is.na(data$region) )
table(is.na(data$area) )
table(is.na(data$year) )
table(is.na(data$month) )
table(is.na(data$price) )

data$area <-  ifelse(data$area == "전체",NA, data$area)

d1<- data %>%
  filter(!is.na(area)) %>%
  mutate(area_lv = ifelse(area == "전용면적 60㎡이하","A",
                             ifelse(area == "전용면적 60㎡초과 85㎡이하", "B",
                                    ifelse(area == "전용면적 85㎡초과 102㎡이하" , "C", "D"))))

str(data$price)

d1 <- data %>%
  filter(!is.na(price)) %>%
  group_by(region) %>%
  summarise(mean_price = mean(price))

ggplot(d1, aes(x = reorder(region , -mean_price), y = mean_price , fill = region)) + geom_col() + 
labs(title = "지역별 전체평균", x = "지역" , y = "평당분양가격평균균")


d2 <- data%>%
  filter( !is.na(price) & !is.na(area)) %>%
  group_by(year, region) %>%
  summarise(mean_price = mean(price))

ggplot(d2, aes(x = year, y = mean_price, fill = region)) +
  geom_col(position = "dodge")+
  xlim(2015+0.5,2020-0.5)+
  labs(title="연도별 지역평균", x = "연도" , y = "평당분양가격평균균" )



d3 <- data %>%
  filter(!is.na(area) & !is.na(price) & year == 2019 & region == "서울")


d4 <- d3 %>%
  group_by(month) %>%
  summarise(mean_month_price = mean(price))


ggplot(d4, aes(x = month, y = mean_month_price)) +
  geom_line() + 
  labs(title="2019년 서울지역 월별 평균변화", x = "월", y = "평당분양가격평균")

tester <- data
a <- tester$year
a
tester$month <- ifelse(tester$month < 10,paste0(0,tester$mon),tester$month)
b <- tester$month
b
tester$date <- paste(a,b,rep="01", sep = "-")
c <- tester$date
tester$date <- as.Date(c,"%Y-%m-%d")
class(tester$date)

d5 <- tester%>%
  filter( !is.na(price) & region == "서울" ) %>%
  group_by(date)%>%
 summarise(mean_price= mean(price))


ggplot(d5, aes(x = date, y = mean_price))+
  geom_line(color = "red")+
  geom_hline(yintercept = 7300, color = 'green')+
  labs(title="연도별 아파트분양가 변화동향", x = "연도" , y = "평당분양가격평균균")
  


 

  


