n = 10;

m = 10;

randoms <-vector();

num_var = 1000;

index = 1;

while(index <=num_var) {

	u<-vector();

	index1 =1;

	while(index1 <= n+m-1) {

		u[index1] = runif(1,0,1);
	
		index1 = index1 + 1;

	}

	u = sort(u);

	randoms[index] = u[n];

	index = index + 1;

}

print(randoms);
hist(randoms);


