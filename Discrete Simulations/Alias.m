num_prob = 100;
p= rand(1,num_prob); % number of probabilities 
p = p/sum(p); %the sampling distribution

n = size(p,2);
a = 1:n; %alias values
q = zeros(1,n); 
q = n*p; % probabilities of getting non-alias bin 
greater = find(q >= 1);
smaller = find(q < 1);
while (~isempty(smaller) && ~isempty(greater))
    i = smaller(1);
    j = greater(1);
    a(i) = j;
    q(j) = q(j) -(1- q(i));
    if (q(j) < 1)
        greater = setdiff(greater,j);
        smaller = union(smaller,j);
    end
    smaller = setdiff(smaller,i);
end

N = 1000; % generate sample of  size N
X = zeros(1,N);
for i = 1:N
    K = ceil(rand*n);
    if (rand > q(K));
        X(i) = a(K);
    else
        X(i) = K;
    end
end



disp('Probabilities: ')
disp(p)
disp('Simulation: ') 
disp(X)