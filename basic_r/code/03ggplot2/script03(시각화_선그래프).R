'''
선그래프(시계열) - 일정시간을 두고 변화를 표현할 때 사용.(무조건 연속된 날짜가 필요하다)
'''
library(ggplot2)
eco <- as.data.frame(economics)
eco

?economics # psavert - 저축률 , #uempmed - 실업기간

ggplot(eco, aes(x=date, y = psavert))+
  geom_line( color= 'red')


ggplot(eco, aes(x=date, y = uempmed ))+
  geom_line(color = 'green')



# 일별 연속 날짜 생성
start <- as.Date("1990-01-01")
end <- as.Date("2020-12-01")

date_set1 <- seq(start, end, by=1)

# 월별 연속 날짜 생성
date_set2 <- seq(start,end, by ="month")
date_set2

# 연별 연속 날짜 생성
date_set3 <- seq(start, end , by ="year")
date_set3


# 월별날짜를 이용한 시계열 그래프
date <- seq(as.Date("2000-01-01"), as.Date("2020-12-01"), by = "month")
date

# 랜덤날짜 생성
num <- ceiling( runif(length(date)) * 10 )


# 날짜별 데이터프레임
df <- data.frame(date, num)
ggplot(df, aes(x = date, y = num)) +
  geom_line()



# 상자그래프
ggplot(mpg, aes(x = drv, y = hwy))+
  geom_boxplot()

ggplot(mpg, aes(x = class, y= hwy))+
  geom_boxplot()

ggplot(mpg, aes(x = manufacturer, y = hwy))+
  geom_boxplot()+
  coord_flip()

# 그래프의 사용방법이 궁금하다면
# ?help -> home -> cheat sheet -> data visualization ggplot2











