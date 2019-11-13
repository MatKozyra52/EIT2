clear all;
close all;
syms x;

X=1:10;
Y=[8.15,22.7,60.3,163.8,445.3,1210,3289,8942,24309,66079];
n=length(Y);
Z=log(Y);

a1=(n*sum(X.*Z)-(sum(X)*sum(Z)))/(n*sum(X.^2)-(sum(X))^2);
a2=(sum(X.^2)*sum(Z)-sum(X)*sum(X.*Z))/(n*sum(X.^2)-(sum(X))^2);

c=a1;
b=exp(a2);

y(x)=b*exp(c*x);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
plot(X,Y,'ro');
hold on;
ezplot(y(x), [min(X) max(X)]);