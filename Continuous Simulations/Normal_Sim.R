
index = 1;

num_var = 10^4;

randoms <- vector();

mu = 5;

sigma = 5;

while(index <= num_var) {


	u1 = runif(1,0,1);
	y1 = -log(u1);
	u2 = runif(1,0,1);
	y2 = runif(1,0,1);
	
	if((((y2) - ((y1-1)^(2)))/2) > 0) {

		y = (y2 - (y1-1)^2)/2;

		U = runif(1,0,1);

		if(U <= 0.5) {

			Z = y;

		}

		else {

			Z = -y;

		}

		randoms[index] = mu + sigma*Z;
		index = index +1;

	}

	else {

	}
}

print(randoms);

hist(randoms);