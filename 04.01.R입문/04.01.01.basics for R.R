---
title: "Chapter1. Basics in R"
author: "Yerim Lim"
date: "Jan 31, 2018"
output:
  html_notebook:
    theme: sandstone
    toc: yes
  pdf_document:
    latex_engine: xelatex
mainfont: NanumGothic
editor_options:
  chunk_output_type: inline
---

```{r}
knitr::opts_chunk$set(comment="")
```


## 벡터의 생성
```{r}
a <- 1
x <- 3
a
```
```{r}
print(a)
```
```{OOr}
print(x)
```


문자형으로 이루어진 벡터
```{r}
x <- c("ree","fie","fum")
print(x)
c("eveyone","loves","stats")
c(1,1,2,3,5,6,13,21)
```


벡터 내 계산
```{r}
c(1*pi, 2*pi, 3*pi, 4*pi)
a <- 1:4  ;a*pi
```


 논리형 벡터
```{r}
c(TRUE, FALSE,TRUE)
```


 변수의 결함
```{r}
v1 <- 1:3
v2 <- 4:5
v3 <- c("A","B", "C")
c(v1,v2,v3)
```

## 수열
```{r}
1:5
b<- 2:10
b
```

```{r}
10:19
9:0
e <- 10:2
e
```

### seq함수
```{r}
seq(from=0, to=20, by=2)
```

```{r}
seq(0,20,2)
```

```{r}
seq(from=0, to=20, length.out = 5)
```
```{r}
seq(1.0, 2.0, length.out = 5)
seq(0,10,by=1)
seq(0,10,length=20)
```


```{r}
n <- 0
1:n
```


### rep함수
```{r}
rep(1,times=5)
rep(1:2, each=2)
rep(1:2, times=2)
```

```{r}
c <- 1:5
c
rep(c,5) #벡터 c를 5번 반복하라.
```

```{r}
rep(c, each=5)
rep(c, times=5)
```

## 데이터의 유형
Numeric
```{r}
a <- 3
a
```

### Character
```{r}
b <- "Character"
b
```

### paste
```{r}
A <- c("A","B","C")
A
paste("a","b",sep=" ")
```

```{r}
paste(A, c("d","e"))
paste(A, c("d"))
paste(A, c("d","e","t"))

```

```{r}
f <- paste(A,10)
f
```
```{r}
paste(A,10,sep="")
```
paste 기능은 변수명을 할당할 때 쓰기 유용하다. 아래와 같이 사용하면 좋다.
```{r}
paste(A, 1:10, sep="")
```

응용해보자
```{r}
paste("everybody","loves","cats")
paste("everybody","loves","cats", sep="")
paste("everybody","loves","cats", sep="-")
```

### Substr 함수

substr(문자열, 시작, 끝)

```{r}
substr("BigDataAnalysis",1,4)
```

벡터에도 사용할 있다.
```{r}
ss <- c("Moe","Larry","Curly")
substr(ss, 1,3)
```

### 논리값
```{r}
c <- TRUE
c
d <- T
d
e <- F
e
```

```{r}
a <- 3
a==pi
```

```{r}
a!=pi
a<pi
a>pi
a>=pi
a<=pi
```

### matrix

```{r}
theDAta <- c(1.1,1.2,2.1,2.2,3.1,3.2)
mat <- matrix(theDAta,2,3)
mat

```

```{r}
dim(mat)
```

```{r}
mat
```

```{r}
t(mat)
```

```{r}
mat %*% t(mat)
```

```{r}
diag(mat)
```
```{r}
colnames(mat) <- paste("C" ,1:3, sep="")
colnames(mat)

rownames(mat) <- paste("R", 1:2, sep="")
rownames(mat)
```

```{r}
mat
```
```{r}
mat[1,]
```

```{r}
mat[,3]
```

```{r}
A <- matrix(0,4,5)
A
```


```{r}
A <- matrix(1:20, 4,5)
A
```

```{r}
A[c(1,4), c(2,3)]
```

지정한 위치의 원소에 지정한 수를 할당해보자.
```{r}
A[c(1,4), c(2,3)] <- 1
A
```
```{r}
A+1
```


### List
```{r}
lst <- list(3.14, "MOE", c(1,1,2,3), mean)
lst
```

각 리스트의 원소들에 태그를 부여하자.
```{r}
a <- 1:10
b <- matrix(1:10,2,5)
c <- c("name1","name2")

alst <- list(a=a, b=b,c=c)
alst
```

```{r}
blst <- list(d=2:10*10)
blst
```
```{r}
alst$a
```

```{r}
alst[2]

```
```{r}
alst[[2]]
```

리스트를 벡터함수를 통해 합칠 수있다.
```{r}
ablst <- c(alst,blst)
ablst
```

```{r}
str(alst)
str(blst)
str(ablst)
```

```{r}
score1 <- list(10,20,30,40,50)
score2 <- list(c("a","b"))
```
```{r}
score1[score1>40]
```

리스트에 대한 이해를 높이기 위해 구조를 바꾸어보자. 값 5개를 5개의  리스트로 쪼개어 할당하지 않고, 5개 값아ㅡㄹ 하나의 벡터로 묶어 하나의 리스트로 입력한다면 코딩이 어떻게 변할까?
```{r}
score1a <- list(seq(10,50, by=10))
# score1a[score1a>40] #이건 에러가 뜬다. 리스트의 형식을 이해하자.
```

```{r}
score1a[[1]][score1a[[1]]>40]
```

리스트 형식을 합쳐보자.
```{r}
score12 <- list(score1, score2)
score12
```
리스트의 하위항목이 늘어난 것을 볼 있다.



합쳐린 리스트를 여러경우로 조회해보자.
```{r}
score12[1]
```

```{r}
score12[[1]]
```

```{r}
score12[[1]][1]
```
```{r}
# score12[[[1]]]
```
위 방법으로 실행시 에러가 난다.

### 데이터 프레임
```{r}
a=c(1,2,4,6,3,4)
b=c(6,4,2,4,3.2,4)
c=c(7,6,4,2,5,6)
d=c(2,4,3,1,5,6)
e=data.frame(a,b,c,d)
e
```

```{r}
data(iris)
head(iris)
```

```{r}
data(iris)
newRow <- data.frame(Sepal.Length=3.0, Sepal.Width=3.2, Petal.Length=1.6, Petal.Width=0.3, Species="newsetosa")
newRow
```
```{r}
iris1 <- rbind(iris, newRow)
iris1
dim(iris); dim(iris1)
```
rbind를 할 때는, 각 열의 이름이 같아야한다. 일치시킬 것.




새로운 데이터 프레임을 만들어서 새로운 예제를 만들어보자.
```{r}
name <- c("john","peter","jennifer")
gender <- factor(c("m","m","f"))
hw1 <- c(60,60,80)
hw2 <- c(40,50,30)
grades <- data.frame(name, gender, hw1, hw2)
grades
```

```{r}
grades[1,2]
grades[,"name"] #same result
grades$name #same result
grades[grades$gender=="m",]
grades[,"hw1"]
```

### subset함수 이용하기
```{r}
data(iris)
head(iris)
subset(iris, select = Species, subset=(Petal.Length>1.7)) #select: column you want to showup, suset: logical condition you want
subset(iris,subset=(Petal.Length>1.7) , select = Species) # same result

```

```{r}
subset(iris, c(Sepal.Length, Petal.Length, Species),
       subset=((Sepal.Width==3.0)&(Petal.Width==0.2)))
```

### With 함수
```{r}
#with( dataframe, columnname)
head(with(iris, Species))
```

### merge 함수
```{r}
name <- c("Moe","Larry","Curly","Harry")
year.born <- c(1887, 1902, 1903, 1964)
place.born <- c("BensonHurst","Philadelphia","Brooklyn","Moscow")
born <- data.frame(name, year.born, place.born)
born
```

```{r}
name <- c("Moe","Curly","Larry")
year.died <- c(1952, 1975, 1975)
died <- data.frame(name, year.died)
died
```

```{r}
merge(born,died, by="name")
```

다른 예제를 풀어보자.
```{r}
data(mtcars)
head(mtcars)
colnames(mtcars)
```

```{r}
mtcars[1:5, c("mpg", "cyl")]
```

```{r}
subset(mtcars, select=c("mpg","cyl"), cyl>=6 )[1:6,]
head(mtcars[ mtcars$cyl>=6,c("mpg","cyl") ], n=6)
```

```{r}
subset(mtcars, c("mpg","cyl")  , subset=c(cyl>=6 & mpg>=15))
mtcars[ mtcars$cyl>=6 & mtcars$mpg>=15, c("mpg","cyl")]
mtcars[ c(mtcars$cyl>=6 & mtcars$mpg>=15), c("mpg","cyl")]
```

```{r}
mtcars[(mtcars$gear>=3 & mtcars$cyl>=7)|(mtcars$gear>=3 & mtcars$mpg>=21), c("mpg","cyl","gear") ]
mtcars[(mtcars$gear>3 & mtcars$cyl>7)|(mtcars$gear>3 & mtcars$mpg>21), c("mpg","cyl","gear") ]
mtcars[(mtcars$gear>3) &( mtcars$cyl>7 |mtcars$mpg>21), c("mpg","cyl","gear") ]
```

```{r}
mtcars[rownames(mtcars)=='Volvo 142E',]
```
```{r}
library(ggplot2movies)
data(movies)
head(movies)
colnames(movies)

```


```{r}
# movies[movies$title]
head(movies[grep("skies", movies$title, ignore.case = T), c("title","year","rating")])

```

grep을 이용하여 조건에 맞는 문자열 추출하기
```{r}
pattern="^[Ss]ummer .*?"
ndx <- grep(pattern, movies$title)
ndx
head(movies[ndx,"title"])
```
```{r}
grep("[Ss]ummer", movies$title)
length(grep("Summer", movies$title))
grep("[Ss]ummer", movies$title)
length(grep("[Ss]ummer", movies$title))
length(grep("summer", movies$title))

```


```{r}
c <- 1:10
d <- 1:5
d[c(1,3)]

c[c(2,3)]
c[2:3]

c[c(3,2)]
c[c>5]
c>5
c[c>5 & c<10]
c[c>5 | c<10]
```

##### TRUE FALSE 조건을 더하면, OR 조건문과 같은 결과를 얻을 있다.
```{r}
#아래 두 표현은 동일한 결과를 가져온다.
c[as.logical((c>8 ) + (c<3))]
c[(c>8 )| (c<3)]


# 아래 두 가지 결과의 차이를 보아라. as.logcal을 넣는 것이 어떤 차이를 가져오는지 보자.
c[as.logical((c>8 ) + (c<3))]
c[(c>8 ) + (c<3)] # c[c(1,1,0,0,0,0,0,0,1,1)] 와 같은 의미이다
```

인덱싱 ; 벡터에 이름 붙이기
```{r}
years <- c(1960, 1964, 1976, 1994)

names(years)
names(years) <- c("Kennedy","Johnson","Carter","Clinton")

```

```{r}
years["Carter"]
years[3]

```

### 자료형 데이터 구조변환하기
```{r}
as.numeric("3.14")
as.integer(3.14)

# as.numeric("foo")
as.character(101)
as.numeric(101)
as.numeric(FALSE)
as.numeric(F)
Sys.Date()
as.Date("2013-08-13")
as.Date("2018.3.1", format="%Y.%m.%d")
```

### 날짜를 문자열로 변환
```{r}
as.Date("08/13/2013", format="%m/%d/%Y")
format(Sys.Date())
as.character(Sys.Date())
format(Sys.Date(), format="%d/%m/%Y")
format(Sys.Date(), "%a") # 줄인 요일
format(Sys.Date(), "%A") # 요일
format(Sys.Date(), "%b") # 몇 월인지 숫자로
format(Sys.Date(), "%B") #몇 월인지 한그로..
format(Sys.Date(), "%d") # 일자
format(Sys.Date(), "%D") #날짜를 여섯자리로 보여줌
format(Sys.Date(), "%m") #해당 달
format(Sys.Date(), "%M")
format(Sys.Date(), "%h")
format(Sys.Date(), "%H")
format(Sys.Date(), "%y") #연도를 2자리수로
format(Sys.Date(), "%Y") # 4자리수로
```

### Missing data
```{r}
a <- 0/0
a #  구할 수 없는 값
```
무한대로 나가는 값
```{r}
is.nan(a)
b <- log(0)
b
is.finite(b)
c <- c(0:4, NA)
c
is.na(c)
```

### 벡터의 기본연산 (평균, 표준편차 등 기술통계량의 계산)
```{r}
x<- c(0,1,1,2,3,5,8,13,21,34)
y <- log(x+1)
x
y
mean(x)
median(x)
sd(x)
var(x)
cor(x,y)
```



```{r}
c <- 1:10
var(c)
sum( (c-mean(c))^2 / (length(c)-1) )

c[log(c)<2]
c[log(c)<2] <- 3
c

```
