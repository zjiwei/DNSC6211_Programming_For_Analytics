#The Part C in second assignment in the Programming course

mydf <- read.csv("quizscores.csv",header = TRUE) 
#Read the data in the quizscores.csv

(tab1 <- table(subset(mydf,select = c("Degree","Sex"))))
#Tabulate Degree by Sex

(PofF <- dim(subset(mydf,Sex == "F"))[1]/dim(mydf)[1])
#P(F) 

(PofM <- dim(subset(mydf,Sex == "M"))[1]/dim(mydf)[1])
#P(M)

(PofMMba <- dim(subset(mydf,Sex == "M" & Degree == "MBA"))[1]/dim(mydf)[1])
#P(M and MBA)

(PofFMs <- dim(subset(mydf,Sex == "F" & Degree == "MS"))[1]/dim(mydf)[1])
#P(F and MS) 

(PofFMba <- dim(subset(mydf,Sex == "F"))[1]/dim(subset(mydf,Degree == "MBA"))[1])
#P(F | MBA)

(PofMsM <- dim(subset(mydf,Degree == "MS"))[1]/dim(subset(mydf,Sex == "M"))[1])
#P(MS | M)

myAvg <- function(X,Y){
  Avg <- t(apply(X,2,mean))
  row.names(Avg) <- Y
  print(Avg)
  return(Avg)
}

#Question C
Fe <- as.matrix(subset(mydf,Sex == "F")[,4:9])
AvgF<- myAvg(Fe,"Female")
#The average score across all six quizzes for females.

M <- as.matrix(subset(mydf,Sex == "M")[,4:9])
AvgM<- myAvg(M,"Male")
#The average score across all six quizzes for males.

#Question D
SA <- as.matrix(subset(mydf,Section == "A")[,4:9])
AvgSA<- myAvg(SA,"Section A")
#The average score across all six quizzes for Section A.

SB <- as.matrix(subset(mydf,Section == "B")[,4:9])
AvgSB<- myAvg(SB,"Section B")
#The average score across all six quizzes for Section B.

SC <- as.matrix(subset(mydf,Section == "C")[,4:9])
AvgSC<- myAvg(SC,"Section C")
#The average score across all six quizzes for Section C.

#Question E
Mba <- as.matrix(subset(mydf,Degree == "MBA")[,4:9])
AvgMba<- myAvg(Mba,"Mba")
#The average score across all six quizzes for Mba.

Ms <- as.matrix(subset(mydf,Degree == "MS")[,4:9])
AvgMs<- myAvg(Ms,"MS")
#The average score across all six quizzes for Ms.

