clear all; close all;
a=[2, 0, -2];
x= -2:0.1:3;
y=polyval (a,x);
%plot(x,y);
promien = 5;
punkt = 0;
clear x y;
iteracje = 100;

x1=punkt+rand*2*promien-promien;
x2=punkt+rand*2*promien-promien;
y1=polyval(a,x1);
y2=polyval(a,x2);
a2poch = wiel_poch(wiel_poch(a));
y2poch = polyval(a2poch, linspace(x1,x2,1000));

while (sign(y1)==sign(y2)) && sign(max(y2poch))==sign(min(y2poch))
    x1=punkt+rand*2*promien-promien;
    x2=punkt+rand*2*promien-promien;
    y1=polyval(a,x1);
    y2=polyval(a,x2);
    y2poch = polyval(a2poch, linspace(x1,x2,1000));
end

y12poch=polyval(wiel_poch(wiel_poch(a)),x1);
y22poch=polyval(wiel_poch(wiel_poch(a)),x2);
y11poch=polyval(wiel_poch(a),x1);
y21poch=polyval(wiel_poch(a),x2);

if y1*y12poch > 0
    x1=x1-y1/y11poch;
    for i=1:iteracje
        y1=polyval(a,x1);
        y11poch=polyval(wiel_poch(a),x1);
        x1=x1-y1/y11poch;
        wynik = x1;
    end
elseif y2*y22poch>0
    x2=x2-y2/y21poch;
    for i=1:iteracje
        y2=polyval(a,x2);
        y21poch=polyval(wiel_poch(a),x2);
        x2=x2-y2/y21poch;
        wynik = x2;
    end
end

disp(wynik);