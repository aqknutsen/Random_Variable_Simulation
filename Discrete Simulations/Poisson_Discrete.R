# Enter average number of outomes
mu = 4;

halt = exp(1)^(-mu);


num_variables = 1000;

index = 1;

var <-vector();

while(index <=num_variables) {

	random = runif(1,0,1);

	product =random;


	n =1;
	

	while (product > halt) {

		random1 = runif(1,0,1);
		new_var = product * random1;
		product = new_var;		
		n=n+1;

	}
	

	var[index] = n-1;
	

	index=index+1;

}

prob_6 = 0;
for(i in 1:length(
var)) {

	if(var[i] == 6) {

		prob_6=prob_6+1;
	}
}

print(prob_6/length(var));
print(var);



	

	

