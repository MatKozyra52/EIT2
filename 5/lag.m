function y = lag(X,Y)
    syms x;
    lX = length(X);
    y = 0;
    z = 1;
    for i = 1:lX
        for k = 1:lX
            if k ~= i
                z = z * (x-X(k))/(X(i) - X(k))
            end
        end
        y = expand( y + Y(i) * z )
        z = 1;
    end
    figure(1);
    ezplot(y);
    grid on;
    axis on;
end