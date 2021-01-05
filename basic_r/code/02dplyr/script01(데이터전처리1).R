'''
데이터 전처리 패키지 - 분석전  필요한 부분을 정렬이나 편집하는 작업
행 추출 - ilter(데이터세트, 조건)

'''
.libPaths()
install.packages("dplyr")
library(dplyr)

data <- read.csv("data/excel_exam.csv")
data
str(data)

d1 <- filter(data, class == 1 )
d1
mean(d1$math)

d2 <- filter(data, class != 3)
d2

d3 <- filter(data, math >= 50)
d3

d4 <- filter(data, class == 2 & english >= 80) #class가 2, english 80이상
d4

# %in% - 매칭되는 데이터를 찾을 때 사용합니다.
d5 <- filter(data, class %in% c(1, 3, 5) )
d5

d6 <- filter(data, math %in% c(30:70))
d6

## 데이터 가공을 순차적으로 실행해주는 파이프라인
## 단축키 ctrl + shift + m
ex1 <- filter(data, class != 1) # 클래스가 1이 아닌
ex1

ex2 <- filter(ex1, math <= 50) # 수학점수가 50이상인
ex2

ex3 <- filter(ex2, id %% 2 == 0) # id가 짝수인
ex3

ex4 <- data %>%
  filter(class != 1) %>%
  filter(math >= 50) %>%
  filter(id %% 2 == 0)
ex4

mean(ex4$science)

## mean은 dataframe을 넘기는 함수형태가 아니기 떄문에 아래처럼은 사용이 불가
# data %>%
#   filter(class != 1)%>%
#   filter(math >= 50) %>%
#   filter(id %% 2 == 0) %>%
#   mean(science)


11 / 3 # 실수몫
11 %/% 3 #정수몫

# ggplot2에 있는 mpg 데이터를 이용해 분석 문제를 해결해 보세요.
# • Q1. 자동차 배기량에 따라 고속도로 연비가 다른지 알아보려고 합니다. displ(배기량)이 4 이하인 자동차와 5 이상인 자동차 중 어떤 자동차의 hwy(고속도로 연비)가 평균적으로 더 높은지 파이프라인을 이용해서 알아보세요.
library(ggplot2)
mpg <- as.data.frame(mpg)
mpg

displ4 <-  mpg %>%
  filter(displ <= 4)


displ5 <- mpg%>%
  filter(displ >= 5)
round(mean(displ4$hwy), 2) #반올림
round(mean(displ5$hwy), 2)

# • Q2. 자동차 제조 회사에 따라 도시 연비가 다른지 알아보려고 합니다. "audi“ 제조년월이 2000년 이상인 데이터의 cty 합계, 평균을 구하세요
str(mpg)

audi <- mpg%>%
  filter(manufacturer == "audi" & year >= 2000)

sum(audi$cty)
mean(audi$cty)

# • Q3. "chevrolet", "ford", "honda" 자동차의 고속도로 연비 평균을 알아보려고 합니다.이회사들의 자동차를 추출한 뒤 hwy 전체 평균을 구해보세요.
table(mpg$manufacturer)

x4 <- mpg%>%
  filter(manufacturer %in% c("chevrolet", "ford", "honda"))

mean(x4$hwy)

# chev <- mpg%>%
#   filter(manufacturer == "chevrolet")
# chev_avg <- mean(chev$hwy)
# 
# 
# ford <- mpg%>%
#   filter(manufacturer == "ford")
# ford_avg <- mean(ford$hwy)
# 
# honda <- mpg%>%
#   filter(manufacturer == "honda")
# honda_avg <- mean(honda$hwy)
# 
# (chev_avg+ford_avg+honda_avg)/3














