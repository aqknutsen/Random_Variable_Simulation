intensity<-function(x) {

	# put function here 
	return(6/(x+2))

}

arrival_times<-vector();


#Enter end of time interval
t = 1;

#Enter max value of intensity function on (o,t)
lambda = 3;

#Enter num of runs
num_runs = 1000;
index = 1;
mean_runs<-vector();

while(index <=num_runs) {

	T = -log(runif(1,0,1))/lambda; 
	n = 0;

	while (T < t) {

		if (runif(1,0,1) < intensity(T)/lambda) {

			n = n+1; 
			arrival_times[n] = T; 
			T = T-log(runif(1,0,1))/lambda;
		}

	}

	print(arrival_times);
	mean_runs[index] = mean(arrival_times);
	index = index + 1;

}

print(mean(mean_runs));