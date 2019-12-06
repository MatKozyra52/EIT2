clear all;
wspolczynniki = [1 2 3 4];

wspolczynniki = wspolczynniki(:).';
n= length(wspolczynniki)-1;
pochodna = (n:-1:1).* wspolczynniki(1:1:end-1)