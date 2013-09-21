n=10;
X=[rand(n,1) ones(n,1)];
B=[1;1];
e=randn(10,1);
c=0.1;
Y=X*B+c*e;
B_hat=inv(X'*X)*X'*Y;
x=X(:,1);
scatter(x,Y,'*','r');
hold on
xlabel('x-axis->');
ylabel('y-axis->');
y=B_hat(1)*x+B_hat(2);
line(x,y);