# 자료형

# 숫자형 변수
a <- 1
class(a)
#numeric
a <- 3.14
class(a)
#실수 정수 상관없이 numeric
#문자형 변수
b <- "1"
class(b)
#character
c <- c(1:10)
class(c)
#integer 정수...
d <- TRUE
class(d)

#범주형 변수
e <- factor(c(1,2,3,2,2,2,1,3,4) ) 
e
#level(카테고리)      factor:인자
class(e)
levels(e)

f <- factor( c("a","b","b","c"))
f

# 타입변환 함수 as.numeric(), as.charactor(), as.factor()
as.character(a)
as.character(c)
as.factor(c)
# as.Date("2020") #문자열 -> 날짜
class(as.Date("2020-01-01")) # 반드시 날짜 서식형태를 지켜야합니다

# as.  ->  타입변경메서드


# 객체형 데이터 타입
# vector - 한가지 타입으로 
c(1,2,3,4,5)
c(1:10)
c(1,2,3, "park","hong") # 문자형으로 저장

# dataframe - 여러타입이 합쳐진 2차원 구조
data.frame(a = c(1,2,3),
           b = c("park","hong", "kim"))
data.frame(a = c(1:3),
           b = c("park","hong")) #에러 (길이를 통일시켜야 합니다)


# 행렬(matric) - 한가지타입으로 만들어진 2차원 구조
matrix(c(1:6), nrow=3, ncol=2) #3행 2열
matrix(c(1:6), nrow=2, ncol=3) #2행 3열
matrix(c(1:6), nrow=3, ncol=3) #모자란 경우에는 앞에 원소를 채워줍니다

as.data.frame( matrix(c(1:6), nrow=2, ncol=3))


# Array - 다차원 구조의 행렬
array(c(1:15), dim = c(3,4,3) ) #3행 4열 3차원

#list - 모든 요소를 담는 다차원 구조
list(a = c(1:5),
     b = data.frame(a = c(1,2,3), b = c("kim","lee","choi")),
     c = matrix(c(1:6), nrow = 3, ncol = 2))































