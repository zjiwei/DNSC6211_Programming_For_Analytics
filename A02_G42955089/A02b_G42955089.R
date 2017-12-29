#The Part B in second assignment in the Programming course

mydf <- read.csv("quizscores.csv",header = TRUE) 
#Read the data in the quizscores.csv

mymatb <- as.matrix(subset(mydf, Section == "B")[,4:9])
#Obtain a new matrix  from mydf that contains the data only for Section B for all six quizzes. 

mymatc <- as.matrix(subset(mydf, Section == "C")[,4:9])
#Obtain a new matrix  from mydf that contains the data only for Section C for all six quizzes.

myAnalysis <- function(mymat){
  Avg <- apply(mymat,2,mean)
  StD <- apply(mymat,2,sd)
  result <- as.matrix(cbind(Avg,StD))
  return(result)
}
#The function can calculate the mean and standard deviation of matrix and combine them into a matrix
(X <- myAnalysis(mymatb))

(Y <- myAnalysis(mymatc))

(difference <- X-Y)
#Calculate the mean and standard deviation of matrixB and matrixC.Then calculate their difference.
#According to the result, we can know that most of scores of the quizs in section B is bigger than that in section c.
#Also, most of its standard deviation is bigger, which means the difference between the scores of the quizs in section B.