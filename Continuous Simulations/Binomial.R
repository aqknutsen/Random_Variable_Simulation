p = 0.33;
num_trials = 100;

bernoulli=0;
bernoulli_vec <-vector();

index =1;

index_for_num_var = 1;

total_random_var = 1000;

random_var<-vector();

while(index_for_num_var < total_random_var) {

	index = 1;
	

	while(index<=num_trials) {

		random = runif(1,0,1);

		if(random < p) {
		
			bernoulli = 1;

		}

		else {

			bernoulli = 0;

		}
	
		bernoulli_vec[index] = bernoulli;
	
		index=index+1;

	}

	random_var[index_for_num_var] = sum(bernoulli_vec);

	index_for_num_var=index_for_num_var+1;

}

print(random_var)

print(sum(random_var)/length(random_var))


	

		