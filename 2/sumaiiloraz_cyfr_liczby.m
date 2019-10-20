clear all;
liczba=11111112345;
iterator=0;

while liczba>0
    iterator=iterator+1;
    odjemnik=liczba/10;
    odjemnik = floor(odjemnik);
    ostatnia(iterator) = liczba-(odjemnik*10);
    liczba = odjemnik;
end

suma = sum(ostatnia)
iloraz = prod(ostatnia)