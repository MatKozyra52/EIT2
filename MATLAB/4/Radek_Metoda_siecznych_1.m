%Metoda_stycznych
clc; clear all; close all;
a=[1, 5, -2, -10];
promien = 5;
xa=rand*promien-promien;
xb=rand*promien+promien;

while (sign(polyval(a,xa)) == sign(polyval(a,xb)))  %zapewnia przedzia³ o ró¿nych znakach
    xa=rand*promien-promien;
end

%-------------Przybli¿anie-----------------
precyzja=0.00001;
n=2;
x1=xa-polyval(a,xa)*(xb-xa)/(polyval(a,xb)-polyval(a,xa));
x1(2)= xa-polyval(a,xa)*(x1(1)-xa)/(polyval(a,x1(1))-polyval(a,xa));
while (abs(x1(n)-x1(n-1)) > precyzja)
   x1(n+1)= xa-polyval(a,xa)*(x1(n)-xa)/(polyval(a,x1(n))-polyval(a,xa));
   n=n+1;
end
x1(end)
roots(a)