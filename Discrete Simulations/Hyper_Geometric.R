
#Number of success
N = 5;

#Total Number of items
N_plus_M = 20;

#Number of selected sample
n = 10;

index = 1;
num_var = 1000;
vector_var<-vector();

while(index<=num_var) {

  main_index = 1;
  i_vector<-vector();
  sum_j = 0;

  while(main_index <=10) {
  


    random = runif(1,0,1);

    if(random < (N-sum_j)/(N_plus_M-main_index+1)) {
  
  
      i_vector[main_index] = 1;

    }


    else {
  
  
      i_vector[main_index] = 0;

    }


    sum_j = sum_j + i_vector[main_index];
    main_index = main_index +1;
  
  }
  
  print(sum(i_vector));
  vector_var[index] = sum(i_vector);
  index = index+1;
  

}

hist(vector_var);


		

		
