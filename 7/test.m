clear all;
syms x;

f(x)=3*sin(x);
a=0;    %granice
b=3;
[calkatra, bl_trapezu] = trapezami(f,x,a,b,100);
[calkapro, bl_prostokata] = prostokatami(f,x,a,b,100);