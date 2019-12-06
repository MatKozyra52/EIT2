clear all;
wielo = [1 60 11 -6];
a(4)=1;             %¿eby na przy najwy¿szej potêdze wsp=1
a(3)=wielo(2)/wielo(1);
a(2)=wielo(3)/wielo(1);
a(1)=wielo(4)/wielo(1);

p=(3*a(2)-a(3)^2)/9;
q=(a(3)^3)/27-(a(3)*a(2))/6+a(1)/2;
D=q^2+p^3;
u=(-q+(D)^0.5)^(1/3);
v=(-q-(D)^0.5)^(1/3);

if D>=0
    y(1)=u+v;
    y(2)=-0.5*(u+v)+j*(((3)^0.5)/2)*(u-v);
    y(3)=-0.5*(u+v)-j*(((3)^0.5)/2)*(u-v);
end

if D<0
    k=1:3;
    fi=acos(-q/((-(p^3))^0.5));
    y=(2*(-p)^0.5)*cos((fi+2*pi*(k-1))/3);
end

x=y-(a(3)/3)
roots(wielo)


