clear all;
t=0:0.01:10;

plot(t, exp(-t));
pause();
plot(t, 1./(1+j*t)); 