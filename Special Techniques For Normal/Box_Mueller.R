num_var = 1000;

index = 1;

x<-vector();

y<-vector();

while(index<=num_var) {

	u1 = runif(1,0,1);
	u2 = runif(1,0,1);

	temp1 = sqrt(-2*log(u1));

	temp2= 2*pi*u2;

	
	x[index] = temp1*cospi(temp2);
	y[index] = temp1*sinpi(temp2);

	index=index+1;

}

print(x);
windows()
hist(x)

print(y);
windows()
hist(y);
