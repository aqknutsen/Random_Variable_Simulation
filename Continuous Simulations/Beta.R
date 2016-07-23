n = 10;

m = 10;


u_vector1<-vector();
u_vector2<-vector();

index = 1;

num_var = 1000;


x<-vector();

while(index <= num_var) {


	index1 = 1;

	while(index1 <=n) {

		u_vector1[index1] = runif(1,0,1);
		
		index1 = index1 + 1;

	
	}

	index2 = 1;

	while(index2<=m) {

		u_vector2[index2] = runif(1,0,1);
		
		index2 = index2 + 1;

	
	}


	productu1 = log(prod(u_vector1));

	productu2 = log(prod(u_vector2));


	x[index] = (productu1 + productu2)/productu1;

	index = index + 1;

}

print(x);
hist(x)