



#Enter end of time interval
t = 1;

#Enter constant intensity
lambda =10
halt = exp(1)^(-lambda);

mean_times<-vector()

num_variables = 1000;

index = 1;


while(index <=num_variables) {

	random = runif(1,0,1);

	product =random;


	n =1;
	

	while (product > halt) {

		random1 = runif(1,0,1);
		new_var = product * random1;
		product = new_var;		
		n=n+1;

	}
	

	poisson = n -1
	


	random_vector<-vector() 
	random_index = 1;

	while(random_index < poisson) {

		random_vector[random_index] = runif(1,0,1)

		random_index = random_index + 1;
	
	}
	


	sorted = sort(random_vector);

	times<-sorted * t;
	
	print(times);

	if(length(times)==0) {
	
		mean_times[index] = 0;
		
	}

	else {

		mean_times[index] = mean(times);

	}

	index=index+1;

}
print(mean(mean_times));

