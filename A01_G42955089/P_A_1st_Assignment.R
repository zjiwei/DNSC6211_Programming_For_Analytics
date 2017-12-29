#Part A of the assignment of Programming Course

myAvg <- function(x) {
  S <- 0
  for(i in 1:length(x)){
    S <- S + x[i]
  }
  Avg <- S/length(x)
  return(Avg)
}

mySD <- function(x) {
  Avg <- myAvg(x)
  S <- 0
  for(i in 1:length(x)){
    S <- S + (Avg - x[i])^2
  }
  SD <- (S/(length(x)-1))^(1/2)
  return(SD)
}

myRange <- function(x) {
  min <- x[1]
  max <- x[1]
  for(i in 1:length(x)){
    if (x[i] > max){
      max <- x[i]
    }
    if (x[i] < min){
      min <- x[i]
    }
  }
  range = max-min
  return(range)
}
