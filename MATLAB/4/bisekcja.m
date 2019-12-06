function [x1, x2, iteracje] = bisekcja(x1,x2,a,dokladnosc)

    iteracje =0;
    if polyval(a,x1)*polyval(a,x2)>=0
        disp("zly przedzia³");
        return;
    end
    
    while (abs(x1-x2)>dokladnosc)
        new = 0.5*(x1+x2);
        iteracje = iteracje+1;
        if(sign(polyval(a,new))==sign(polyval(a,x1)))
            x1=new;
        elseif(sign(polyval(a,new))==sign(polyval(a,x2)))
            x2=new;
        end
    end

end

