library(ggplot2)
mpg <- as.data.frame(mpg)


mpg

aaa <- mpg[1:3,1:4]
mpg[11:13,1:4]

aaa
bbb

cbind(aaa,bbb) # 컬럼병합
rbing(aaa,bbb) # 행병합

#주의
#cbind()은 행의 개수가 반드시 일치
#rbind()은 열의 개수가 반드시 일치

ccc <- mpg[1:2,1:5]
aaa
ccc

ddd <- mpg[1:2,1:6]
aaa
ddd
rbind(aaa,ddd) #에러

# 열 데이터의 빈도수
table(mpg$model)
table(mpg$year)
table(mpg$manufacturer)

# 열 데이터를 여러개 넣으면 다차원으로 빈도수 확인
table(mpg$manufacturer, mpg$year)


# 빈도수의 간략한 '표'형태를 표현
# hist (빈도수)
 hist(table(mpg$model))
hist(table(mpg$manufacturer))
