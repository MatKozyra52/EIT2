clear all; close all;
a=[2, 0, -2];
x= -2:0.1:3;
y=polyval (a,x);
%plot(x,y);
promien = 5;
punkt = 0;
dokladnosc = 0.00001;
clear x y;


while 1
    x1=punkt+rand*2*promien-promien;
    x2=punkt+rand*2*promien-promien;
    y1=polyval(a,x1);
    y2=polyval(a,x2);
    if (sign(y1)~=sign(y2))
        break
    end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
xstare = x1;
xtymczasowe = x2;

while abs(xstare-xtymczasowe)> dokladnosc
    ystare=polyval(a,xstare);
    ytymczasowe=polyval(a,xtymczasowe);
    xnowe = xstare-(ystare*(xtymczasowe-xstare))/(ytymczasowe-ystare);

    xstare = xtymczasowe;
    xtymczasowe = xnowe;
    
end

clear x1 x2 xnowe y1 y2
disp("Zero w");
disp(xstare);