clear all;
N = randi([1 100], 20, 40);   %losowe liczby z <1 100> w macierzy 20 na 40
N = N(:).';            %wektor w wiersz

for n=1:1:length(N);
    for m = 2:1:N(n)-1;
        reszta = mod(N(n),m);
        if reszta == 0 | N(n)==1;
            N(n)=0;
        end
    end
end

for n=length(N):-1:1        %usuwanie niepierwszych
    if N(n)==0 N(n)=[]; end
end

%KONIEC