function [calka, bl_wzgledny] = trapezami(f,x,a,b,rozdzielczosc)

syms x;
dx=linspace(a,b,rozdzielczosc);
suma=0;

for n=dx(2:end-1)
    suma = suma + double(f(n));
end

calka=(dx(2)-dx(1))*(0.5*(f(dx(1))+f(dx(end)))+suma);
calka=double(calka);

%%%%%%%%%%%%%%%%%%%%%%%%%%  WBUDOWANA %%%%%%%%%%%%%
F=int(f);
CALKA=double(F(dx(end))-F(dx(1)));

%%%%%%%%%%%%%% Blad
bl_wzgledny=100*abs(calka-CALKA)./CALKA;

end

