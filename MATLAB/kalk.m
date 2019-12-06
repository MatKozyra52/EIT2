clear all;
t= 0:0.1:25;
x=0;
 
for n=1:1:8
    x= x+((sin(n*t))/n);
end


xt=0
for n=1:1:8
    xt=xt+(((j*exp(-j*n*pi)-j)/(n*pi))*exp(j*n*t*pi));
end

plot (t, xt)


%ch amp-czest
for n=0:80
    plot(n, abs((j*exp(-j*n*pi)-j)/(n*pi)), 'rx');
    hold on
end