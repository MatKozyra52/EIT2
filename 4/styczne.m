function [x1, x2, iteracje] = styczne(x1,x2,a,dokladnosc)
    iteracje = 0;
    a2poch = wiel_poch(wiel_poch(a));
    y2poch = polyval(a2poch, linspace(x1,x2,1000));
    
    if (sign(polyval(x1,a))~=sign(polyval(x2,a))) && sign(max(y2poch))==sign(min(y2poch))
        disp("nieprawidlowy przedzial");
        return
    end
end

