p=[2 10 100 1000];

c=0.1;
m=2;
MSE=zeros(1,m);
n=2*p(end);

Avg_MSE=zeros(1,size(p,2));



for j=1:size(p,2)

    B=ones(p(j),1);
    B_hat_vector=zeros(p(j),m);
    AVG_B_hat=zeros(p(j),size(p,2));
for i=1:m
    
%Part 1 of HW1
X=[rand(n,p(j)-1) ones(n,1)];
e=randn(n,1);
Y=X*B+c*e;
B_hat=inv(X'*X)*X'*Y;
B_hat_vector(1:p(j),i)=B_hat;

%Part 2 of HW2
%sub-part-1
%MSE(i)=sqrt(sum((B_hat-B).^2));
MSE(i)=norm(B_hat-B,2);

end

Avg_MSE(j)=mean(MSE);
AVG_B_hat(1:p(j),j)=mean(B_hat_vector,2);

end