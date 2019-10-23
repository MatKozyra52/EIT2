clear all;
a=[2,0, -4];
apoch = wiel_poch(a);
punkt= 0;
promien= 2;

while true
    x1=rand*promien+punkt;
    y1=polyval(a,x1);
    x2=rand*promien+punkt;
    y2=polyval(a,x2);
    dx=linspace( x1, x2, 1000);

    k=rand*4-2   ;
    alambda=-k*a;
    alambda(end-1)=alambda(end-1)+1;
    ypochlambda=polyval(wiel_poch(alambda), dx); 
    
    if sign(y1)~=sign(y2) && max(abs(ypochlambda))<1
        break
    end
   
end

%liczbazx1x2
razy = abs(x1-x2);
x0=min([x1, x2])+rand*razy;

for i=1:10
    y0=polyval(a, x0);
    x0=x0-k*y0;
end
