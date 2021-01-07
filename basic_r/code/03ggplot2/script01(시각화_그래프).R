'''
참조 사이트 : http://ggplot2.tidyverse.org/reference/index.html
그래프 틀 만들기
ggplot(데이터셋, 축)
'''

# install.packages("ggplot2")
library(ggplot2)

mpg <- as.data.frame(mpg)

ggplot(data = mpg, aes(x = displ, y = hwy)) # 1단계
ggplot(data = mpg, aes(x = displ, y = hwy) ) + geom_point() # 2단계계
ggplot(data = mpg, aes(x = displ, y = hwy) ) + geom_point(color = "red", size = 0.1) # 3단계
ggplot(data = mpg, aes(x = displ, y = hwy) ) + geom_point(color = "red", size = 0.1) + xlim(5, 7) # 4단계

# 시각화함수들의 중첩이 길어져서 줄바꿈할때는 +가 마지막에 있도록 처리합니다
# scales를 이용한 축설정
ggplot(data = mpg, aes(x = displ, y = cty) ) + 
  geom_point() + 
  xlim(5, 7)+
  ylim(10,30)


# sclaes를 이용해서 제목과 축설정
# 1st
ggplot(mpg, aes(x = displ, y = cty)) +
  geom_point() +
  xlab("x축제목") + 
  ylab("y축제목") + 
  ggtitle("이건 제목입니다")

# 2nd
ggplot(mpg,aes(x = cty , y = hwy)) + 
  geom_point() + 
  labs(title = "제목" , x = "x축" , y= "y축")



# aes축에 color값을 고정으로 지정 or data별로 지정
ggplot(mpg, aes(x = cty, y = hwy, color = 'red'))+
  geom_point()


ggplot(mpg, aes(x = cty, y = hwy, color = cyl))+
  geom_point()














