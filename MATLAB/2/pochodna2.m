clear all;
wspolczyniki=[1 2 3 4 5 6 7 8 9];
n=length(wspolczyniki);
pochodna=zeros(1,n-1);

for u=n-1:-1:1
    pochodna(n-u)=u*wspolczyniki(n-u);
end