p = 0.5;
num_success = 10;
num_neg_bi_rand = 1000;
neg_bi_rand<-vector();
index_num_rand=1;

bernoulli=0

geo_rand <-vector();
geo_var = 0;

index =1;

while (index_num_rand<=num_neg_bi_rand) {

	index =1;
	bernoulli=0;
	geo_var = 0;
	geo_rand <-vector();
	

	while (index <= num_success) {

		while(bernoulli!=1) {

			random = runif(1,0,1);

			if(random < p) {

				bernoulli = 1;
				geo_var=geo_var+1;
			

			}

			else {

				geo_var=geo_var+1;

			}

		}

		geo_rand[index]=geo_var;
		index=index+1;

	}

	
	neg_bi_rand[index_num_rand] = sum(geo_rand);
	index_num_rand=index_num_rand+1;

}		

print(neg_bi_rand);
print(sum(neg_bi_rand)/length(neg_bi_rand))