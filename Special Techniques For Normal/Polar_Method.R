num_var = 10^4;

index = 1;

x<-vector();

y<-vector();

while(index<=num_var) {

	u1 = runif(1,0,1);
	u2 = runif(1,0,1);[

	v1 = 2*u1 - 1;

	v2 = 2*u2 -1;

	s = v1^2 + v2^2;

	if(s<1) {
	
		x[index] = sqrt((-2*log(s))/s)*v1;

		y[index] = sqrt((-2*log(s))/s)*v2;
		
		index = index+1;



	}


}

print(x);
windows()
hist(x);

print(y);
windows()
hist(y);