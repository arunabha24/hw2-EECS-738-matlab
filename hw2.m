
p=2;
B=ones(p,1);
c=0.1;
m=30;
MSE=zeros(1,m);
n=[10 100 1000];
B_hat_vector=zeros(p,m);
Avg_MSE=zeros(1,size(n,2));
AVG_B_hat=zeros(p,size(n,2));


for j=1:size(n,2)

for i=1:m
    
%Part 1 of HW1
X=[rand(n(j),1) ones(n(j),1)];
e=randn(n(j),1);
Y=X*B+c*e;
B_hat=inv(X'*X)*X'*Y;
B_hat_vector(1:p,i)=B_hat;
% x=X(:,1);
% scatter(x,Y,'*','r');
% hold on
% xlabel('x-axis->');
% ylabel('y-axis->');
% y=B_hat(1)*x+B_hat(2);
% line(x,y);

%Part 2 of HW2
%sub-part-1
MSE(i)=sqrt(sum((B_hat-B).^2));
%MSE(i)=norm(B_hat-B,2);

end

Avg_MSE(j)=mean(MSE);
AVG_B_hat(1:p,j)=mean(B_hat_vector,2);

end


