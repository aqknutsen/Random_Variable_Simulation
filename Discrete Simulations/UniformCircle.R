radius =4;
index =1;
num_var = 1000;
r_vec<-vector();
theta_vec<-vector();

while(index<=num_var) {
  
  
  r_vec[index] = (radius*radius*runif(1,0,radius))/2;
  theta_vec[index] = runif(1,0,2*pi);
  print(r_vec[index]);
  print(theta_vec[index]);
  index=index+1;
}