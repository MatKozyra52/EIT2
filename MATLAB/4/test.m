clear all; 
a = [1, 0, -2];
xa= 0;
xb= 2;
dokladnosc=0.001;

disp("Czas metody bisekcji");
tic;
[x1, x2, iteracje] = bisekcja(xa, xb, a, dokladnosc);
toc;
disp("Czas metody stycznych");
tic;
[x3, x4, iteracje2] = styczne2(xa, xb, a, dokladnosc);
toc;
disp("Czas metody wbudowanej roots");
tic;
roots(a);
toc;

x=xa:0.001:xb;
plot(x, polyval(a,x));
grid on;
hold on;
plot([x1,x2,x3,x4], polyval(a,[x1,x2,x3,x4]), 'ro');