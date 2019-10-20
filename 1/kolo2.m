clear all
x=2;
y=3;
r=2;
w=0:0.1/r:2*pi;

liczba= exp(j*w);

plot([r*real(liczba)+x r*real(1)+x], [r*imag(liczba)+y r*imag(1)+y])