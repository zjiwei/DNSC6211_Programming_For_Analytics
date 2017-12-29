#The Part A in second assignment in the Programming course

mydf <- read.csv("quizscores.csv",header = TRUE) #Read the data in the quizscores.csv

mydfb <- mydf[1:20,] 
# Copy the data for rows 1 to 20 from mydf to a new data frame mydfb. 

mydfc <- subset(mydf,Section == "B" & Sex == "M") 
#Obtain a new data frame mydfc from data for males in section B in mydf.

mydfd <- subset(mydf,Sex == "F" & Degree == "MBA") 
#Obtain a new data frame mydfc from data  for females pursuing an MBA degree in mydf.

mydfe <- subset(mydf,Sex == "M" & Degree == "MS")[,4:9]
#Obtain a new data frame mydfc from data of all quiz scores (no other columns) for males doing an MS degree in mydf.

mydff <- subset(mydf,Section == "C" & Sex == "F" & Degree == "MBA",select = c(Quiz1,Quiz3))
#Obtain a new data frame mydfc from data  only Quiz1 and Quiz3 scores for females in section C pursuing an MBA degree in mydf.
