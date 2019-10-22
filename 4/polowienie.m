clear all; close all;
a=[3, -2, -2, 0, -2];
x= -2:0.1:3;
y=polyval (a,x);
plot(x,y);
promien = 5;
punkt = 0;
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


while (abs(x1-x2)>0.01)
    new = 0.5*(x1+x2);

    if(sign(polyval(a,new))==sign(y1))
        x1=new;
    else if(sign(polyval(a,new))==sign(y2))
            x2=new;
        else if(sign(polyval(a,new))==0)
                wynik = new;
            end
        end
    end
end

disp("Miejsce zerowe w przedziale");
disp(x1);
disp(x2);

clear new y1 y2;