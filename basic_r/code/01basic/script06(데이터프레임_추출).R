# 데이터 추출
library(ggplot2)
mpg <-  as.data.frame(mpg)

# 인덱싱을 활용한 데이터 추출
# 변수명[행,열]
mpg[3, ] #3행 추출
mpg[15, ]
mpg[1:6,] #1-6행 추출
mpg[c(2,4,6), ] # 2,4,6행 추출
mpg[c(1:6, 8, 10), ] # 1~6, 8, 10행

# 인덱싱을 활용한 데이터 열추출
mpg [,3] # 3열 추출(벡터형으로 반환)
mpg [,7] # 7열 추출
mpg[,(1:6)] # 1-6열 추출
mpg [, c(1:6, 8, 10)] # 1~6, 8, 10열
mpg[,"model"] # model열 추출
mpg[,c("model","class")]

# 인덱싱을 활용한 데이터 행열추출
head(mpg)
mpg[1,3]
mpg[1:3, 2:3]
mpg[1:3,c("model","displ")]

mpg[ 4:6 , c(3:4,6)] # 4~6행, 3,4,6열
mpg[ 4:6 , c("displ","year","trans")] # 4~6행, 3,4,6열열

# 주의
# 데이터프레임에서 컬럼이 1개인 경우에는 vector형으로 결과가 나옵니다
mpg[1:3, 1]
class(mpg[1:3, "model"])


#=======================================================================
# 데이터프레임에서 특정행에 대한 결과를 보려면 $ 컬럼명
mpg$manufacturer # mpg[,"manufacturer"]
mpg$model
mpg$year




mpg$class == "suv"

# $연산을 이용해서 조건에 충족하는 행 추출
mpg$model
mpg[mpg$model == "a4",] # 모델이 a4인 열
mpg[mpg$year >= 2000,] # 생산년도 2000이후
mpg[mpg$cty >= 20,] # 도로연비가 20이상인 행
mpg[mpg$cry >= 20 & mpg$hwy >= 30,] #도로연비 20이상,고속도로연비 30이상인 행

#=====================문제=========================

sales <- data.frame(fruit = c("사과", "딸기", "수박"),
            price = c(1800, 1500, 1300),
           amount = c(24,38,13))

class(sales)
str(sales)

#mean, sum
sum(sales$price) #합
mean(sales$price) #평균

sum(sales$amount)
mean(sales$amount)     












