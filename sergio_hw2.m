beta = [1,1]';

%(1)
n = [10 100 1000];

% (2)
control = 0.1;

P=2;
m = 30;
MSE=zeros(1,m);
estimationsOfBeta=zeros(P,m);

MSEaverage=zeros(1,size(n,2));
estimationOfBetaAverage=zeros(p,size(n,2));

for j = 1:3
    for i = 1:m

        X = [rand(n(j),1),ones(n(j),1)];

        %(2)
        epsilon = randn(n(j),1);


        %(3)
        Y = X * beta + control * epsilon;

        %(4)
        estimationOfBeta = inv(X' * X) * X' * Y;
        estimationsOfBeta(1:P,i) =  estimationOfBeta;

        MSE(i)= norm(estimationOfBeta - beta, 2);
    end
    MSEaverage(j) = mean(MSE)
    estimationOfBetaAverage(1:p,j)=mean(estimationsOfBeta,2)
end