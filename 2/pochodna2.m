clear all;
wspolczyniki=[1 2 3 4 5 6 7 8 9];
pochodna=zeros(1,length(wspolczyniki)-1);

for u=length(wspolczyniki)-1:-1:1
    pochodna(length(wspolczyniki)-u)=u*wspolczyniki(length(wspolczyniki)-u);
end