clear all; 
a = [1, 0, -2];
xa= 0;
xb= 2;
dokladnosc=linspace(0.00001, 1, 100);

for n=1:100
[x1, x2, iteracje(n)] = bisekcja(xa, xb, a, dokladnosc(n));
[x3, x4, iteracje2(n)] = styczne(xa, xb, a, dokladnosc(n));
end

plot(dokladnosc, iteracje);
hold on;
plot(dokladnosc, iteracje2);