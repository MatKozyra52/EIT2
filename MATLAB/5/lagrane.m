function y = lagrane(X,Y)

if length(X)~=length(Y)
    disp("Z³e dane");
    return;
end

syms x;
n = length(X);
f = 1;
y = 0;

for k=1:n
    for l=1:n
        if l~=k
            f = f*(x-X(l))/(X(k)-X(l));
        end
    end
    y=(y+f*Y(k));
    f=1;
end
%figure(1);
%ezplot(y);
end

