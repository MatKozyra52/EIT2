clear all;
wsp= [1 1 1 1];
wsp= wsp(:).';
c=0;

n= length(wsp);

wynik = [1./(n:-1:1).*wsp, c]