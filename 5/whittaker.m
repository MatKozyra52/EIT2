function y = whittaker(X,Y)

syms x;
y=0
len = length(X)
d=X(2)-X(1);

for k=1:len
    y=y+sinc((x-X(k))/d)*Y(k);
end

