# 외부데이터 불러오기
# 작업폴더 확인과 변경
getwd()
setwd("D:/course/R/basic_r/")

d1 <- read.table("excel_exam.txt",header = T)
class(d1)
d1

# 데이터가 tap으로 구분된 파일을 읽을 때 사용.
d2 <- read.delim("data/excel_exam.txt", header = T)
d2


# read.csv() - csv파일을 읽고,
# 문자 데이터를 읽어 들어올때 컬럼이 factor변경되는 문제가 있는데, 
# factor로는 변경되는 것을 막는 옵션
d3 <- read.csv("data/excel_exam.csv", stringsAsFactors = F)
d3
str(d3) # 데이터의 구조 확인

# excel파일을 읽기 위해서 패키지 설치
install.packages("readxl")
library(readxl)

#excel파일이 첫행이 데이터인 경우에는 col_names F로 선언해서 가지고 옵니다
d4 <- read_excel("data/excel_exam.xlsx", col_names = F)
d4 <- as.data.frame(d4)
class(d4) #데이터 프레임으로 변경이 필요
d4

##===============================================================
# file -> import datset 선택하고 마우스로 데이터를 import도 가능

## 데이터 저장하기

name <- c("park","kim", "lee", "choi", "hong")
kor <-  c(10, 20, 30, 40, 50)
eng <-  c(23, 45, 64, 34, 23)
d5 <- data.frame(name, kor, eng)

# \는 탈출 문자로 \\두번작성해야 합니다
write.csv(d5, file = "data/export.csv") # getwd()기준 상대경로
write.csv(d5, file = "D:\\course\\R\\basic_r\\data\\export.csv") # 절대경로























