num_var = 1000;

index = 1;

randoms<-vector();

mu = 0;

sigma = 1;

while(index <= num_var) {

	
	u1 = runif(1,0,1);
	u2 = runif(1,0,1);

	temp1 = sqrt(-2*log(u1));

	temp2= 2*pi*u2;

	
	x = temp1*cospi(temp2);
	y = temp1*sinpi(temp2);


	N = x;
	randoms[index] = exp(1)^N;
	index = index + 1;

}

print(randoms);
hist(randoms);