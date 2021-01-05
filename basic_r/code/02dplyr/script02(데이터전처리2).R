'''
열 추출하기 select(데이터세트, 열...)
'''
library(dplyr)
data = read.csv("data/excel_exam.csv")

select(data, id)
select(data, id, math, english) # 여러행 셀렉트
select(data, -id) # 행 제외
select(data, -id, -class) # 여러행 제외

# 클래스가 1~3인 행 데이터의 수, 영, 과 컬러만 조회 (파이프라인)
data%>%
  filter(class %in% c(1:3))%>%
  select(-id, -class) %>%
  head(10)

'''
열 정렬하기 arrange(데이터세트, 열...)
내림차순 정렬을 하고 싶다면 desc(열) 를 이용합니다
'''

arrange(data, math) # 수학 오름차순
arrange(data, desc(math) ) #수학 내림차순
arrange(data, class, math) #클래스 오름차순, 수학 올림차순
arrange(data, desc(class), id) 


data%>%
  filter(class %in% c(1:3))%>%
  select(id, math) %>%
  arrange(desc(math))


'''
기존 열에 대해서 새로운 열 추가 mutate(데이터세트, 열 = 기준열)
'''
# 기존의 열 추출방법
data$test <- data$math+data$english+data$science
data

d1 <- mutate (data, total = math + english + science)
d1

# 여러행을 한번에 생성하기
d2 <- mutate(data, total = math + english + science,
       avg = (math+english+science)/3,
       test = "hello")
d2


# 조건에 따른 파생변수 추가
d3 <- mutate(d2, exam_reuslt = ifelse(avg> 60, "pass","fail"))
d3

# 파이프라인으로 한번에 작성하기(total, avg, exam_result)변수
data <- read.csv("data/excel_exam.csv")
data

result <- data%>%
  mutate(total = math + english + science,
         avg = (math + english + science)/3)%>%
  mutate(exam_result = ifelse(avg >= 60, "pass", "fail")) %>%
  filter(exam_result == "pass")
  
result















