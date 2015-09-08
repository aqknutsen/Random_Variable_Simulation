n_or_alpha = 1; 

lambda_or_beta = 2;


index = 1;

num_var = 1000;

randoms <- vector();

while(index <= num_var) {


	u = runif(1,0,1);
	randoms[index] = n_or_alpha * ((-log(u))^(1/lambda_or_beta));
	index=index+1;
}

print(randoms);
hist(randoms);