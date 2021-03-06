'''
그래프와 그패르 더하기
중간에 있는 레이어층(그래프함수)들이 겹쳐서 서로 보이는 형태로 사용함.

여러그래프를 겹쳐 표현할때는 aes()을 그래프함수에 넣습니다.
'''

mpg <- as.data.frame(mpg)
mpg

str(mpg)


# 옵션을 aes함수 안에 지정하면 범주가나타나고, 밖에 선언해주면 그래프의 색상만 변합니다
ggplot(mpg) + 
  geom_point(aes(x= displ, y = hwy ), color = 'red')+
  geom_point(aes(x = hwy, y = displ), color = 'blue')

# 축을 고정하고, 서로다른 데이터를 표현
ggplot(mpg)+
  geom_point(aes(x = displ, y =cty), color = 'red') +
  geom_point(aes(x = displ, y = hwy), color = 'blue')




# 하나의 데이터를 점과 라인으로 표현
eco <- as.data.frame(economics)
head(eco)

# 저축률 vs 실업률
a <- ggplot(eco) +
  geom_line(aes(x = date, y = psavert), color = 'red') +
  geom_line(aes(x = date, y = uempmed), color = 'blue')


# line과 point
b <- ggplot(eco) +
  geom_line(aes(x = date, y = psavert), color = 'red') +
  geom_point(aes(x = date, y = psavert), size = 0.1)


# 저축률 vs 실업률
# hline() - 수평축(yintercept에 축 위치를 입력)
# vline() - 수직축(xintercept에 축 위치)

c <- ggplot(eco) +
  geom_line(aes(x = date, y = psavert), color = 'red') +
  geom_line(aes(x = date, y = uempmed),  color = 'blue') +
  geom_hline(yintercept = mean(eco$psavert), color = 'green') + # y축의 값
  geom_vline(xintercept = as.Date("2010-12-31"), color = 'black' ) + # x축의 값
  labs(title = "저축률 vs 실업률", x = "날짜" , y = "저축률")

  
# 동시에 여러 그래프를 표현하기 gridExtra패키지
install.packages("gridExtra")
library(gridExtra)



# step1 - 각각의 그래프를 변수에 저장

a 
b
c

# step2 - grid.arrange() 함수안에 표현
grid.arrange(a,b,c, nrow = 1 , ncol = 3)
grid.arrange(a,b,c, nrow = 3 , ncol = 1)
grid.arrange(a,b,c, nrow = 2 , ncol = 2)





































