index=1;

num_trials = 1000;

p=0.5;

bernoulli = 0;

bernoulli_vec<-vector()

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

print(bernoulli_vec);

print(sum(bernoulli_vec)/length(bernoulli_vec));


