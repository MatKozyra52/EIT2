%Metoda stycznych 2

clc; clear all;
a= [-2 2 1 7];
promien =2;
xA= rand*2*promien - promien;
xB= rand*2*promien - promien;

while (polyval(a,xA) * polyval(a,xB) <0) 
    xA= rand*2*promien - promien;
end
%W tym miejscu mamy ju¿ dwa punkty o przeciwnych znakach
x(1)=xA-(polyval(a,xA)*(xB-xA))/(polyval(a,xB)-polyval(a,xA));
x(2)=x(1)-(polyval(a,x(1))*(x(1)-xA))/(polyval(a,x(1))-polyval(a,xA));

n=2;
precyzja = 0.000001;
while (abs(x(n)-x(n-1))>precyzja)
x(n+1)=x(n)-(polyval(a,x(n))*(x(n)-x(n-1)))/(polyval(a,x(n))-polyval(a,x(n-1)));
n=n+1;
end
abs(x(n)-x(n-1))
x(n)
roots(a)