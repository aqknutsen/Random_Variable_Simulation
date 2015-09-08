num_probabilities = 6;
p = runif(num_probabilities,0,1);
p = p/sum(p);

q = runif(num_probabilities,0,1);
q = q/sum(q);

c = max(p)/min(q);


num_var = 1000;

var <-vector();

index = 1;

while (index <=num_var) {
	
	u = runif(1,0,1);
	
	sumu = p[1];
	
	sumu1 = p[1];

	index1 = 2;

	if(u < sumu1) {
		index1 = 1;

	}

	else {

	
		while(TRUE) {

			sumu = sumu1;
			sumu1 = sumu1 + p[index1];

			if((sumu < u) & (u < sumu1)) {
				break;

			}
			
			index1 = index1 +1;
		

			
		}

	}

	my_rand = runif(1,0,1);
	my_y = index1;

	if(my_rand * c * q[my_y] <= p[my_y]) {

		var[index] = my_y;
		index = index + 1;

	} 

}

print(p);
print(var);
windows()
hist(var);