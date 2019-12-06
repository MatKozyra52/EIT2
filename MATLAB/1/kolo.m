clc, clear all, close all;
r=2;
a=3;
b=5;
precision=1000;

x=linspace(a-r, a+r, r*precision);

y1=(r^2-(x-a).^2).^0.5+b;
y2=-(r^2-(x-a).^2).^0.5+b;

plot(x,y1,'r')
hold on
grid on
plot(x,y2,'r')
