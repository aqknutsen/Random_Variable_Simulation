#Number of random variables that we want to generate
num_var = 1000;

index = 1;

#Holds one set of random variables
x<-vector();

#Holds another set of random variables
y<-vector();

while(index<=num_var) {

  #Generate two independent uniform random numbers
	u1 = runif(1,0,1);
	u2 = runif(1,0,1);

	#Temporary storage
	temp1 = sqrt(-2*log(u1));
	temp2= 2*pi*u2;

	#Generate random numbers according to the Box Mueller Formula
	x[index] = temp1*cospi(temp2);
	y[index] = temp1*sinpi(temp2);

	index=index+1;

}

#Print one set of normal random variables and plot oa histogram. The histogram should have sort of a normal shape
print(x);
windows()
hist(x)

#Print one set of normal random variables and plot oa histogram. The histogram should have sort of a normal shape
print(y);
windows()
hist(y);

#Plot both hiograms in the same figure
windows()
par(mfrow=c(2,2))
hist(x)
curve(dnorm,-4,4);
hist(y);
curve(dnorm,-4,4)
