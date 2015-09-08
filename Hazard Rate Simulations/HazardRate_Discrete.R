#intensity function
f<-function(x) {
	return(6/x+2);
} 

# p = 1/max(function) from 0 to infinity;
p = 1/3;

num_var = 1000;

bernoulli=0;

rand <-vector();
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
	
	sum = sum + geo_var;

	U = runif(1,0,1);

	if(U<=f(sum)/p) {
		rand[index] = sum;
		index=index+1;
		sum = 0;

	}
	
		

}

print(rand);
print(mean(rand));
