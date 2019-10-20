clear all;

R=100;
R1=100;
R2=200;
C=10^-5;

w = 0:10:1000000;
k= -(R2*(1+j*w*C*(R+R1)))./(R1*(1+j*w*C*R));
gain=20*log10(abs(k));
semilogx(w,gain);