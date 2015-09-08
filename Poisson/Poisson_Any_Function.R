#function
g = 10;

#Enter endpoint of inteveral
T=10;


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

	while(sum<lambda*g*T) {

		x = -log(runif(1,0,1))
		
		sum = sum + x;
		
		index1=index1+1;

	}

		N=index1;


		Uofi = runif(1,0,1);

		new_sum = sum - x;
		
		points[index,1] = new_sum/(lambda*10);
		points[index,2]=10*Uofi

		index=index+1;

	

}

print(points);


	
