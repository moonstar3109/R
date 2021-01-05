# 간단한 함수
# 숫자형 함수 sun(), mean(), max(), min(), median()

x <- c(1:10)
x

sum(x) #합계
mean(x) # 평균
max(x) # 최대값
min(x) # 최소값
median(x) #백터에 가장 중심이 되는 값

# 결측값(NA)이 있다면 함수의 사용이 불가능
y <- c(1:10, NA, 11:20) # combine변수의 조합
y

#NA 격측값 (null값)

sum(y, na.rm = T) # 격측값은 제거하고 합계
mean(y, na.rm = T)

# 문자형 함수 nchar(), paste()

str1 <- "hello world"
str2 <- "my name is park"
str3 <- c("a", "b", "c", "d", "e")

# 문자열의 길이 확인
nchar(str1)
nchar(str2)
nchar(str3) # 각 원소들의 글자값을 확인

# 문자열 붙이기 함수 paste() 
# paste : 풀로붙이다

paste(str1,str2)
paste(str1, 10, str2) # 문자와 숫자의 결합이 가능

paste(str1, str2, sep = ",") # sep 두 변수가 나눠지는 사이에 특정 문자 삽입
paste(str1, str2, sep = "-")

# collapse는 combine형 변수를 다룰 때 사용하는 옵션  collapse : 접다 의미
paste(str3, collapse = "," ) # "a" "b" "c" "d" "e" -> "a,b,c,d,e"


# 문자열 자르기 함수
str1
substr(str1, 1, 2) # R에서는 첫번째 값은 1부터 시작(0아님)
substr(str1, 7, nchar(str1))
# str1 <-  substr(str1, 1, 2)



# 패키지 설치
install.packages("ggplot2") # 그래프를 그려주는 패키지지
library(ggplot2) # 라이브러리 로드


x <-  c(1,1,1,2,3,4,5)
qplot(x) # 단순한 빈도 그래프

# 패키지에는 연습용 데이터가 존재
data(package = .packages(all.available = TRUE))

mpg 
mpg <- as.data.frame(mpg)
class(mpg)


# qplot() 단순한 데이터 형태를 확인할 때 사용...
qplot(data = mpg, x = hwy) # 자동차데이터의 고속도로 연비의 빈도
qplot(data = mpg, x = cty) # 도시 주행거리 연비의 빈도
qplot(data = mpg, x = drv) # 자동차 구동방식의 빈도

qplot(data = mpg, x = drv, y = cty) # 구동방식 별 도심연비비
qplot(data = mpg, x = drv, y = class) # 구동방식 별 자동차 종류

qplot(data = mpg, x = drv, y = cty, geom = "line", color = drv) # 옵션
qplot(data = mpg, x = drv, y = cty, geom = "boxplot", color = drv)



# 다섯명의 시험점수를 가지고 있는 변수를 생성하고 
# 평균 합계 새로운 변수에 저장해서 확인

x <- c(80, 54, 75, 34, 90)

sum <- sum(x)

avg <- mean(x)

sum
avg

