clear all;
X=1:10;
Y=[1,7,3.1,4,4.9,4,7.2,8,9.1,10];

x0= linspace (min(X), max(X), 1000);

p1=polyfit(X,Y,1);
y1= polyval (p1, x0);

p3=polyfit(X,Y,3);
y3= polyval (p3, x0);

p10=polyfit(X,Y,10);
y10= polyval (p10, x0);

subplot(2,2,1);
plot(X, Y, 'ro');
hold on;
plot(x0,y1);
grid on;
title("1szy stopien")

subplot(2,2,2);
plot(X, Y, 'ro');
hold on;
plot(x0,y3);
grid on;
title("3ci stopien")

subplot(2,2,3);
plot(X, Y, 'ro');
hold on;
plot(x0,y10);
grid on;
title("10ty stopien")

subplot(2,2,4);
plot(X, Y, 'ro');
hold on;
plot(x0,y1);
plot(x0,y3);
plot(x0,y10);
grid on;
title("1szy, 3ci i 10ty stopien")