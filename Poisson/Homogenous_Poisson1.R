
arrival_times <-vector();

#Enter end of time interval
t = 1;

#Enter constant intensity
lambda =5

#Enter number of runs
num_runs = 10^4;
index =1;
means<-vector();

while(index <= num_runs) {

	T = -log(runif(1,0,1))/lambda;

	n =0;


	while(T < t) {

		n = n+1;
	 	arrival_times[n] = T;
	 	T = T -log(runif(1,0,1))/lambda;

	}

	means[index] = mean(arrival_times);
	index = index + 1;
	

}

print(mean(means));
	