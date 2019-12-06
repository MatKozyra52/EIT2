%Metoda stycznych 3
clc; clear all;

a=[2,0,-2];
promien = 6;
xA = rand*2*promien-promien;
xB = rand*2*promien-promien;
while ( sign(polyval(a,xA))==sign(polyval(a,xB)))
   xA = rand*2*promien-promien; 
end
%funkcje
d=(xB-xA)/2;
xC=xA+d;
fA=polyval(a,xA);
fB=polyval(a,xB);
fC=polyval(a,xC);
k=(fC-fA)/(fB-fC)

%Obliczanie x1
x1=xC+(xC-xA)*(fC*sign(fA-fB))/(fC^2-fA*fB)^0.5
roots(a)