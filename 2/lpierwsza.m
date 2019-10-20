clear all;
liczba=113
pierwsza = 1;   %bool troche
dzielniki = [1];

for d=2:1:liczba-1
    if mod(liczba, d)== 0       %je¿eli przy dzieleniu wysz³o bez reszty
        pierwsza = 0;
        dzielniki = [dzielniki, d];
    end
end

if pierwsza 
    disp('Pierwsza');
else
    disp('Podzielna przez');
    dzielniki
end