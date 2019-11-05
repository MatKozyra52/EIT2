clear all
close all;
X = [1,1.1,1.2,1.4,1.6,2,3,6,7];
Y = sin(X);

syms x;
y(x) = lagrane(X,Y)
double(y(X))== Y
g=sklejanie(X,Y,pi)


iks=X(1):0.01:X(end);
for k=1:length(iks)
    yiks2(k)=sklejanie(X,Y,iks(k));
    yiks1(k)=double(y(iks(k)));
end



figure(1);
plot(iks, yiks1);
hold on;
grid on;
plot(X, Y, 'ro');
title("Metoda Lagrange'a")


figure(2);
plot(iks, yiks2);
hold on;
grid on;
plot(X, Y, 'ro');
title("Metoda sklejania")