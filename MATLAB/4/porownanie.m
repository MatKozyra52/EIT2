clear all; 
a = [1, 0, -2];
xa= 0;
xb= [2, 8, 32, 128];
dokladnosc=linspace(10e-8, 1, 1000);

for n=1:length(dokladnosc)
    for m=1:length(xb)
        [x1, x2, iteracje(n,m)] = bisekcja(xa, xb(m), a, dokladnosc(n));
        [x3, x4, iteracje2(n,m)] = styczne2(xa, xb(m), a, dokladnosc(n));
    end
end

for m=1:length(xb)
    subplot(2, length(xb)/2, m)
    plot(dokladnosc, iteracje(:,1));
    hold on;
    grid on;
    xlabel("Dokładność")
    ylabel("Iteracje")
    plot(dokladnosc, iteracje2(:,1));
    legend("Metoda Bisekcji", "Metoda stycznych");
    title("Szerokość przedziału " + xb(m));
end