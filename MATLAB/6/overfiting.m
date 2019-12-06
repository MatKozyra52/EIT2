clear all;
X=1:10;
Y=[1,4,3.4,3.9,5.2,5.8,7.2,8,7,10];

x0= linspace (min(X), max(X), 1000);

p1=polyfit(X,Y,1);
y1= polyval (p1, x0);

p9=polyfit(X,Y,9);
y9= polyval (p9, x0);

plot(X, Y, 'ro');
hold on;
plot(x0,y1);
plot(x0,y9);