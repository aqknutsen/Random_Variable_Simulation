


p = 1/3;

num_var = 1000;

bernoulli=0;

geo_rand <-vector();
geo_var = 0;

index =1;

    
while (index <= num_var) {

	geo_var = 0;
	bernoulli=0;

	while(bernoulli!=1) {

		random = runif(1,0,1);

		if(random < p) {

			bernoulli = 1;
			geo_var=geo_var+1;
			

		}

		else {
			
			bernoulli = 0;
			geo_var=geo_var+1;

		}

	}
	
	geo_rand[index]=geo_var;
	index=index+1;

}

print(geo_rand);
print(sum(geo_rand)/length(geo_rand));