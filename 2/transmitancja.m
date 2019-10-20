clear all; close all;
w= 10:10:100000; % badany zakres
R= 1000;
L= 10*10^(-3);
C= 10^(-6);


H=(L*j*w)./(-R*C*L*(w.^2)+L*j*w+R);  %transmitancja

modulH=abs(H);
bode = 20.*log10(modulH);

[m, p] = min(abs(0-imag(H)));   %rezonanns dla imag=0
clear m;                        %nie potrzebne
w0=w(p)
f0=w0/(2*pi)                    % czêstotliwoœæ rezonansowa

%%%%%%%%%%%%%%%%%%%%%%%%%% WYKRESY %%%%%%%%%%%%%%%%%%%%%%%%%%%
subplot(2,1,1)
plot(w, imag(H));    %rezonans wystêpuje dla imag(H)=0;
hold on;
plot(w0, imag(H(p)),'rx');
grid on;
title('Czêœæ urojona');

subplot(2,1,2);
semilogx(w, bode);  %rezonans wystêpuje dla wzmocnienia=0;
hold on;
semilogx(w0, bode(p),'rx');
grid on;
title('Ch-ka amplitudowa Bodego');

% KONIEC