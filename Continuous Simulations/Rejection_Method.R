my_func <- function(x) {
  # put function here of a known pdf
  return(1);

}

my_func2 <- function(x) {
  # put pdf of random variable you want a distribution for
  return(20*x*((1-x)^3));
  

}


# put max value of f(x)/g(x);
c = 135/64;

num_random = 1000;
index = 1;
random<-vector()

while(index <=num_random) {

	#generate Y from g(x) (my_func)
	y = runif(1,0,1);

	#generate U
	u = runif(1,0,1);

	if(u*c*my_func(y)<=my_func2(y)) {

		random[index] = y;
	
		index = index+1;

	}

	
}

print(random);
hist(random);
	
