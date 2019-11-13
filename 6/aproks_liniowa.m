clear all;
close all;
syms x;

X=1:10;
Y=[1,7,3.1,4,4.9,6,7.2,8,9.1,10];
n=length(Y);

a1=(n*sum(X.*Y)-(sum(X)*sum(Y)))/(n*sum(X.^2)-(sum(X))^2);
a2=(sum(X.^2)*sum(Y)-sum(X)*sum(X.*Y))/(n*sum(X.^2)-(sum(X))^2);

y(x)=a2+a1*x;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
plot(X,Y,'ro');
hold on;
ezplot(y(x), [min(X) max(X)]);
