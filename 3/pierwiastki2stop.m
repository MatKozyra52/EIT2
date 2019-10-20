clear all;
wspol=[1 14 -22];
a=wspol(1);
b=wspol(2);
c=wspol(3);

delta= b^2-4*a*c;
x(1)=(-b-(delta)^0.5)/(2*a);
x(2)=(-b+(delta)^0.5)/(2*a);
disp(x);
poly(roots(wspol))
