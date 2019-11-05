clear all
close all;
X = [1,2,3,4,5,6,7];
Y = X.^0.5;

syms x;
y(x) = lagrane(X,Y);
double(y(X))== Y
g=sklejanie(X,Y,pi);
h=whittaker(X,Y)


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

figure(3);
ezplot(h);
hold on;
grid on;
plot(X, Y, 'ro');
title("Metoda Whittakera")