clear all;
syms x;

f(x)=3*sin(x);
a=0;    %granice
b=3;

dx=linspace(a,b,100);
suma=0;

for n=dx(2:end-1)
    suma = suma + double(f(n));
end

calka=(dx(2)-dx(1))*(0.5*(f(dx(1))+f(dx(end)))+suma);
calka=double(calka)

%%%%%%%%%%%%%%%%%%%%%%%%%%  WBUDOWANA %%%%%%%%%%%%%
F=int(f)
CALKA=double(F(dx(end))-F(dx(1)))

%%%%%%%%%%%%%% Blad
bl_wzgledny=100*abs(calka-CALKA)./CALKA