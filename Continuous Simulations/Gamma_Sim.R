n_or_alpha = 2 

lambda_or_beta = 1;

u_vector<-vector();

index = 1;

num_var = 1000;

randoms <- vector();

while(index <= num_var) {


	index1 = 1;

	while(index1 <=n_or_alpha) {

		u_vector[index1] = runif(1,0,1);
		
		index1 = index1 + 1;

	
	}

	productu = log(prod(u_vector));
	
	randoms[index] = -productu/lambda_or_beta;

	index = index + 1;

}

print(randoms);
hist(randoms);



