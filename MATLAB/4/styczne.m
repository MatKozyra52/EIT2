function [x1, x2, iteracje] = styczne(x1,x2,a,dokladnosc)
    iteracje = 0;
    a2poch = wiel_poch(wiel_poch(a));
    y2poch = polyval(a2poch, linspace(x1,x2,1000));
    
    if (sign(polyval(a,x1))==sign(polyval(a,x2))) && (sign(max(y2poch))~=sign(min(y2poch)))
        disp("nieprawidlowy przedzial");
        return
    end
    
    y1=polyval(a,x1);
    y2=polyval(a,x2);
    y12poch=polyval(wiel_poch(wiel_poch(a)),x1);
    y22poch=polyval(wiel_poch(wiel_poch(a)),x2);
    y11poch=polyval(wiel_poch(a),x1);
    y21poch=polyval(wiel_poch(a),x2);

    if y1*y12poch > 0
        x1=x1-y1/y11poch;
        while abs(x1-x2)>dokladnosc
            iteracje=iteracje+1;
            y1=polyval(a,x1);
            y11poch=polyval(wiel_poch(a),x1);
            x2=x1;
            x1=x1-y1/y11poch;
        end
    elseif y2*y22poch>0
        x2=x2-y2/y21poch;
        while abs(x1-x2)>dokladnosc
            iteracje=iteracje+1;
            y2=polyval(a,x2);
            y21poch=polyval(wiel_poch(a),x2);
            x1=x2;
            x2=x2-y2/y21poch;
        end
    end

end

