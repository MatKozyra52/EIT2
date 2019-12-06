function [xa, xb, iteracje] = styczne2(x1,x2,a,dokladnosc)
    iteracje = 0;
    a2poch = wiel_poch(wiel_poch(a));
    y2poch = polyval(a2poch, linspace(x1,x2,1000));
    
    if (sign(polyval(a,x1))==sign(polyval(a,x2))) && (sign(max(y2poch))~=sign(min(y2poch)))
        disp("nieprawidlowy przedzial");
        return
    end
    
    x(1)=abs(x1-x2)/2+min([x1; x2]);
    
    while 1
        iteracje = iteracje +1;
        y=polyval(a,x(iteracje));
        ypoch=polyval(wiel_poch(a),x(iteracje));
        x(iteracje+1)=x(iteracje)-(y/ypoch);
        
        if abs(x(end)-x(end-1))<dokladnosc
            break;
        end
    end
    xa=x(end);
    xb=x(end-1);
end