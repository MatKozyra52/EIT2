clear all
x = [0.5, 1.7, 3, 5.2, 7, 9.9]; 
y = sin(x)- cos(x);
xq= 0:0.25:10;

inter1 = interp1(x,y,xq);
inter2 = interpn(x,y,xq,'cubic');
inter3 = spline(x,y,xq);

figure(1)
subplot(2,2,1);
plot(x,y,'o',xq,inter1);
subplot(2,2,2);
plot(x,y,'o',xq,inter2);
subplot(2,2,3);
plot(x,y,'o',xq,inter3);
subplot(2,2,4);
plot(xq,sin(xq)- cos(xq));

%%%%%%%%%%%%%%%%%%% 3D %%%%%%%%%%%%

[X,Y]= meshgrid(-6:2);
Z = sin(X)-cos(Y);
[Xq,Yq] = meshgrid(-6:0.25:6);

INTER1 = interp2(X,Y,Z,Xq,Yq);
INTER2 = interpn(Z,'linear');
INTER3 = griddata(X,Y,Z,Xq,Yq);

figure(2)
subplot(2,2,1)
mesh(Xq,Yq,INTER1)
subplot(2,2,2)
mesh(INTER2)
subplot(2,2,3)
mesh(Xq,Yq,INTER3)