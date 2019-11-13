clear all;
close all;
syms x;

X=1:10;
Y=[3,12,27,48,75,118,147,192,249,300];
n=length(Y);

U=log(X);
Z=log(Y);

a1=(n*sum(U.*Z)-(sum(U)*sum(Z)))/(n*sum(U.^2)-(sum(U))^2);
a2=(sum(U.^2)*sum(Z)-sum(U)*sum(U.*Z))/(n*sum(U.^2)-(sum(U))^2);

b=exp(a2);
c=a1;

y(x)=b*x^c;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
plot(X,Y,'ro');
hold on;
ezplot(y(x), [min(X) max(X)]);
