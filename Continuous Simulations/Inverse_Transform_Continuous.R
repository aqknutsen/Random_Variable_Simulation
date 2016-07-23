#Code prints 1000 exponential random variables 

#Put inverse of F 
inverse<-function(U) {
  
  return(-log(1-U))
  
}

# Number of random variables we want to generate
num_variables = 1000;

index = 1;

#Vector that holds random variables 
randoms<-vector();


while(index <=num_variables) {
  
  #Generate a new standard uniform random variable each time the loop runs
  u = runif(1,0,1);
  
  #Plug the standard uniform random variable into the inverse function 
  randoms[index] = inverse(u);
  
  index = index +1;
  
}

#Plots a histogram of the random variables which should have the shape of the exponential probability density function
hist(randoms,xlab="Random Variable Values", main = "Histogram of Random Variables")

