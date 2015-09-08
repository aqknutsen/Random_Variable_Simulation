#intensity function
f<-function(x) {
	return(x^2);
} 

#Enter max value of funciontion on (o,infinity)
lambda = 3;

#num_variables
num_var = 1000;
old_index = 1;
rand<-vector();

while(old_index<=num_var) {

	X<-vector();

	X[1] = -log(runif(1,0,1))/lambda;

	U = runif(1,0,1);

	sum = X[1];

	index = 2;

	while (U > (f(sum))/lambda) {

		X[index] = -log(runif(1,0,1))/lambda;

		sum = sum + X[index];

		index=index+1;
		
		U = runif(1,0,1);

	}

	N = index-1;
	new_sum = 0;
	new_index = 1;

	for(i in 1:N) {
		new_sum =new_sum + X[new_index];

	}	

	rand[old_index] = new_sum;
	old_index = old_index+1;
}	

print(rand);