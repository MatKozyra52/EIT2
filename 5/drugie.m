clear all;
X1=1:2:10;
X2=1:1:10;
X3=1:0.5:10;
xq=1:0.1:10;

Y1= sin(X1)./X1;
Y2= sin(X2)./X2;
Y3= sin(X3)./X3;

inter11 = interp1(X1,Y1,xq);
inter12 = interp1(X2,Y2,xq);
inter13 = interp1(X3,Y3,xq);

inter21 = interpn(X1,Y1,xq,'cubic');
inter22 = interpn(X2,Y2,xq,'cubic');
inter23 = interpn(X3,Y3,xq,'cubic');

inter31 = spline(X1,Y1,xq);
inter32 = spline(X2,Y2,xq);
inter33 = spline(X3,Y3,xq);

%%%%%%%%%%%%%%%%% wykresy %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure(1)
subplot(2,2,1);
plot(X1,Y1,'o',xq,inter11);
title("interpl 5");
subplot(2,2,2);
plot(X2,Y2,'o',xq,inter12);
title("interpl 10");
subplot(2,2,3);
plot(X3,Y3,'o',xq,inter13);
title("interpl 20");

figure(2)
subplot(2,2,1);
plot(X1,Y1,'o',xq,inter21);
title("interpn 5");
subplot(2,2,2);
plot(X2,Y2,'o',xq,inter22);
title("interpn 10");
subplot(2,2,3);
plot(X3,Y3,'o',xq,inter23);
title("interpn 20");

figure(3)
subplot(2,2,1);
plot(X1,Y1,'o',xq,inter31);
title("spline 5");
subplot(2,2,2);
plot(X2,Y2,'o',xq,inter32);
title("spline 10");
subplot(2,2,3);
plot(X3,Y3,'o',xq,inter33);
title("spline 20");