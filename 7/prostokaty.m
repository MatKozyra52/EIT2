clear all;
syms x;

f(x)=3*sin(x);
a=0;    %granice
b=3;

dx=linspace(a,b,100);
h=dx(2)-dx(1);
suma=0;
for n=dx(1:end-1)
    suma=suma + double(f(n+h/2));
end
calka = h*suma;

%%%%%%%%%%%%%%%%%%%%%%%%%%  WBUDOWANA %%%%%%%%%%%%%
F=int(f)
CALKA=double(F(dx(end))-F(dx(1)));

%%%%%%%%%%%%%% Blad
bl_wzgledny=100*abs(calka-CALKA)./CALKA;