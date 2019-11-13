clear all;
close all;
syms x;

X=1:10;
Y=[11,2,19,130,50,120,140,150,140,200];
n=length(Y);
Z=log(Y);
U=log(X);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
a1=(n*sum(U.*Z)-(sum(U)*sum(Z)))/(n*sum(U.^2)-(sum(U))^2);
a2=(sum(U.^2)*sum(Z)-sum(U)*sum(U.*Z))/(n*sum(U.^2)-(sum(U))^2);

b=exp(a2);
c=a1;

y(x)=b*x^c;
yy=double(y(X));
erry=immse(yy,Y);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
a3=(n*sum(X.*Y)-(sum(X)*sum(Y)))/(n*sum(X.^2)-(sum(X))^2);
a4=(sum(X.^2)*sum(Y)-sum(X)*sum(X.*Y))/(n*sum(X.^2)-(sum(X))^2);

g(x)=a4+a3*x;
gg=double(g(X));
errg=immse(gg,Y);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
a5=(n*sum(X.*Z)-(sum(X)*sum(Z)))/(n*sum(X.^2)-(sum(X))^2);
a6=(sum(X.^2)*sum(Z)-sum(X)*sum(X.*Z))/(n*sum(X.^2)-(sum(X))^2);

c=a5;
b=exp(a6);

h(x)=b*exp(c*x);
hh=double(h(X));
errh=immse(hh,Y);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,1,1);
plot(X,Y,'ro');
hold on;
fplot(y(x), [min(X) max(X)]);
fplot(g(x), [min(X) max(X)]);
fplot(h(x), [min(X) max(X)]);
legend("Punkty", "Potegowa", "Liniowa", "Wykladnicza");
title("Aproksymacje");

subplot(2,1,2);
bar(1,erry);
hold on;
bar(2,errg);
bar(3,errh);
title("Wielkosci bledu sredniokwadratowego");
legend("Potegowa", "Liniowa", "Wykladnicza")