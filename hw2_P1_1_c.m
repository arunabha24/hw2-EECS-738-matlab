p=2;
B=ones(p,1);
c=[0.01 0.1 1];
m=30;
MSE=zeros(1,m);
n=100;
B_hat_vector=zeros(p,m);
Avg_MSE=zeros(1,size(c,2));
AVG_B_hat=zeros(p,size(c,2));


for j=1:size(c,2)

for i=1:m
    
%Part 1 of HW1
X=[rand(n,1) ones(n,1)];
e=randn(n,1);
Y=X*B+c(j)*e;
B_hat=inv(X'*X)*X'*Y;
B_hat_vector(1:p,i)=B_hat;

MSE(i)=sqrt(sum((B_hat-B).^2));
%MSE(i)=norm(B_hat-B,2);

end

Avg_MSE(j)=mean(MSE);
AVG_B_hat(1:p,j)=mean(B_hat_vector,2);

end
