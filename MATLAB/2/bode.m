clear all;
close all;
w0= 1000;
f0= w0/(2*pi);
w= 1:10:100*w0;

k=(1+(w0./(j*w)));    %funkcjac

kmod = abs(k);

klog = 20*log10(kmod);

fi= angle(k);

%%%%%%%%%%%%%%%%% WYKRESY %%%%%%%%%%%%%%%%%%%%%%%%%%

figure(1);
subplot(2,1,1);
semilogx(w,klog);
hold on;
plot(w0, 0, 'rx')
grid on;
xlabel('w (omego)');
ylabel('|K(jw)|');
title('Amplituda');


subplot(2,1,2); 
semilogx(w,fi);
grid on;
hold on;
plot(w0, 0, 'rx')
xlabel('w (omego)');
ylabel('fi');
title('Faza');