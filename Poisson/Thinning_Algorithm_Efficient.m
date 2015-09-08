f = @(x) x^2; % intensity function
Tmax=input('Enter maximum time:');  % maximum time
num_intervals = input('How many subintervals do you want: '); 

length_interval = Tmax./num_intervals;

time_intervals = zeros(num_intervals+1);

time_intervals(1)=0;

for i = 2:length(time_intervals)
    
    time_intervals(i) = (i-1).*length_interval;
    
    
end

lambda_j = zeros(num_intervals);

for i = 2:length(time_intervals)
    
    lambda_j(i-1) = fminbnd(@(x) -f(x),time_intervals(i-1),time_intervals(i));
    
end

t=0;
i=1;
n=2;
control =0;
S(1) = 0;

while t<Tmax
    
  if control ==0
    X = -(1/lambda_j(i)).*(log(rand(1,1)));
  end
  
  if t + X < time_intervals(i+1) 
      
      t = t+X; 
      U = rand(1,1);
      
      if U <= f(t)./lambda_j(i)
          S(n) = t;
          n=n+1;
      end 
      
      control =0;
      
  else 
      
      if i == num_intervals + 1
          break
          
      end 
      
      X = ((X - time_intervals(i+1) + t).*(lambda_j(i)))./lambda_j(i+1);
      t = time_intervals(i+1);
      i=i+1;
      control = 1;
  end 
  
  
  
end

Vector(1)=0;
n=1;

for i = 1:length(S) 
    
    if S(i)~=0 
        Vector(n)=S(i);
        n=n+1;
    end
end 

disp(Vector);
