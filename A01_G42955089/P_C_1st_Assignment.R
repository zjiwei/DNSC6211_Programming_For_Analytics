#Part C of the first assignment to generate a binomial probability table
while(TRUE){
n <- readline("Please input  the number of trials in the binomial
distribution:")
n <- as.numeric(n)

P <- seq(0.050,0.950,by=0.1)

print(sprintf("n =  %d",n))
print("         Probability of success --->")
output <- ""
for(i in 1:length(P)){
  a <- sprintf("%.3f",P[i])
  output <- paste(output, a, sep=" ")
}
print(sprintf("        %s",output))

for(i in 0:n){
  x <- dbinom(i,n,P)
  x.c <- ""
  for(l in 1:length(x)){
    a <- sprintf("%.3f", x[l])
  x.c <- paste(x.c,a, sep=" ")
  }
  print(sprintf("x = %d | %s",i,x.c))
}
}
