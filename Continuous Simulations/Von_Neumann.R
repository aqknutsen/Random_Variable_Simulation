


randoms<-vector();

randoms_index = 1;

failed_runs = 0;

num_randoms = 1000;




while(randoms_index <= num_randoms) {

	u_vector<-vector();

	index=1;

	u_vector[index] = runif(1,0,1);

	index = index + 1;

	u_vector[index] = runif(1,0,1);

	while(u_vector[index-1] >= u_vector[index]) {
		index = index + 1;
		u_vector[index] = runif(1,0,1);
	}

	if(index%%2==0) {

		randoms[randoms_index] = u_vector[1] + failed_runs;
		randoms_index = randoms_index +1;
		failed_runs = 0;
	}

	else {
	
		failed_runs = failed_runs +1;

	}

}

print(randoms);
hist(randoms);
