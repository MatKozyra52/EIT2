clear all; close all;
a=[1, 5, -2, -10];
x= -2:0.1:3;
y=polyval (a,x);
%plot(x,y);
promien = 5;
punkt = 0;
dokladnosc = 0.00001;
clear x y;


x1=punkt+rand*2*promien-promien;
x2=punkt+rand*2*promien-promien;
y1=polyval(a,x1);
y2=polyval(a,x2);

while (sign(y1)==sign(y2))
    x1=punkt+rand*2*promien-promien;
    x2=punkt+rand*2*promien-promien;
    y1=polyval(a,x1);
    y2=polyval(a,x2);
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

while (abs(x1-x2)>0.01)
    y1=polyval(a,x1);
    y2=polyval(a,x2);
    xnew = x1-(y1*(x2-x1))/(y2-y1);
    if(polyval(a,x1)*polyval(a,xnew)<0)
        if abs(xnew - x2)< dokladnosc
            zero = x2;
            break
        end
        x2=xnew;
    elseif(polyval(a,x2)*polyval(a,xnew)<0)
        if abs(xnew - x1)<dokladnosc
            zero = x1;
            break
        end
        x1=xnew;
    end
end
clear xnew y1 y2
disp("Zero w");
disp(zero);
    