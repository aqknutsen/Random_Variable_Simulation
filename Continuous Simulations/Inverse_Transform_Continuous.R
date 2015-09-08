#Put inverse of F 
inverse<-function(U) {

	# put inverse here [we show an example]
	return(-log(1-U))

}

num_variables = 1000;

index = 1;

randoms<-vector();


while(index <=num_variables) {

	u = runif(1,0,1);
	
	randoms[index] = inverse(u);

	index = index +1;

}

print(randoms);
hist(randoms);