fsamp = 44100;
fcuts = [2500 4000];
mags = [1 0];
devs = [0.05 0.01];

[n,Wn,beta,ftype] = kaiserord(fcuts,mags,devs,fsamp);
hh = fir1(n,Wn,ftype,kaiser(n+1,beta),'noscale');

freqz(hh)

a=[1 -1.883629051204415150166937564790714532137   0.895511519474980310917544557014480233192];
b=[1 -1.589358332001000961852810178243089467287 1];
c=filter(b,a,noisy);
sound(c,fs)
n=1804;
x=c(2:n:end);

figure
subplot(2,1,1)
stem(x)
title('Kaiser Stem')
xlabel('n')
ylabel('Magnitude')
subplot(2,1,2)
grpdelay(b,a)