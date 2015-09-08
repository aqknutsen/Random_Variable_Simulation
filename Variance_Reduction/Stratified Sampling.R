#This implements the technique of stratification sampling
# We do not use the optimal sampling technique

estimator = 0;

variance_estimator = 0;

#Starting Point
a = 0;
#Ending Point
b=1;

#Setting up intervals
num_intervals = 365;

intervals<-rep(0,num_intervals + 1);
intervals[1] = a;

for(i in 2:length(intervals)) {
  
  intervals[i] = intervals[i-1] + (b-a)/num_intervals;
}

intervals[length(intervals)]=b;
#

# Numebr of total samples you want taken
total_samples = 100;
#


#Setting up probabilities that x is in the interval

p_j = rep(0,num_intervals);

for (i in 1:length(p_j)) {
  
  begin = intervals[i]
  end=intervals[i+1];
  
  p_j[i] = pnorm(end) - pnorm(begin);
  
}
#

#Default non-optimal n_j
n_j<-rep(0,num_intervals);
for (i in 1:length(n_j)) {
  
  
  n_j[i] = num_intervals*p_j[i];
  
}
#

#Stock options
vol = 0.005;
risk_free_rate = 0.1;
initial_price = 5000;
strike_price = 50;
exp_date = 1;
model<-function(x) {
  
  my_val =(initial_price*exp((((risk_free_rate-(vol*vol))/2)*exp_date)+ (risk_free_rate*sqrt(exp_date)*x))) - strike_price;
  if(0 >=my_val) {
    return(0);
  }
  else {
    return(my_val*exp((-1)*(risk_free_rate)*(exp_date)));
  }
}

for (j in 1:num_intervals) {
  
  
  
  sum_j = 0;
  sum_squares_j = 0;
  
  for (i in 1: n_j[j]) {
    
    #Generate probability of y given thaat you are in the interval
    u =runif(1,pnorm(intervals[j]),pnorm(intervals[j+1]));
    temp = qnorm(u);
    y_i = model(temp);
    #end
    
    sum_j = sum_j + y_i;
    sum_squares_j = sum_squares_j + (y_i*y_i);
    
    
  }
  estimator_temp = sum_j/n_j[j];
  variance_estimator_temp = ((sum_squares_j - (sum_j*sum_j))/n_j[j])/(n_j[j]-1);
  
  estimator = estimator + p_j[j]*estimator_temp;
  print(estimator);
  
  variance_estimator = variance_estimator + variance_estimator_temp;
  
}

print(estimator);
  
  
