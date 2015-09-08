# Enter radius
r=1;

#Enter constant rate
lambda = 1;

# Enter number of points
num_points = 1000;
index = 1;

#points matrix
points = matrix(, nrow = 1000,ncol = 2);


while(index <=num_points) {

	
	sum = -log(runif(1,0,1));
	index1 = 1;

	while(r^2>=sum/(lambda*pi)) {
		
		x= -log(runif(1,0,1));

		sum = sum + x; 
		
		index1=index1+1;

	}

	N=index1;

	if(N==1) {
		
		points[index,1] = 0;
		points[index,2]=0;
		index =index+1;

	}


	else {

		Uofi = runif(1,0,1);

		new_sum = sum - x;
		
		R = sqrt(new_sum/(lambda*pi));

		points[index,1] = R;
		points[index,2]=2*pi*Uofi

		index=index+1;

	}

}

print(points);


	

