degrees_freedom = 11;

k = degrees_freedom-1/2;

u_vector<-vector();

index = 1;

num_var = 1000;

randoms <- vector();

while(index <= num_var) {


	index1 = 1;

	while(index1 <=k) {

		u_vector[index1] = runif(1,0,1);
		
		index1 = index1 + 1;

	
	}

	productu = -1*2*log(prod(u_vector));

      u1 = runif(1,0,1);
	u2 = runif(1,0,1);

	temp1 = sqrt(-2*log(u1));

	temp2= 2*pi*u2;

	
	x = temp1*cospi(temp2);
	y = temp1*sinpi(temp2);
	
	z = x;
	
	randoms[index] = z^2 + productu;

	index = index + 1;

}

print(randoms);
hist(randoms);