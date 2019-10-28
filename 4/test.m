clear all; 
a = [1, 0, -2];
xa= 0;
xb= 2;
dokladnosc = 0.001;
[x1, x2, iteracje] = bisekcja(xa, xb, a, dokladnosc);