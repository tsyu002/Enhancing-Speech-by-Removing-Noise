[n,Wn]=cheb2ord([2500 4000]/10000, [2000 4500]/10000, 40, -55);
[b,a]=cheby2(n, 55 , [2000 4500]/10000);
b=[1 -0.347667587751099960158285284705925732851 1];
a=[1 -1.883629051204415150166937564790714532137   0.895511519474980310917544557014480233192];

c=filter(b,a,noisy);
sound(c,fs)
n=1804;
x=c(1:n:end);

freqz(b,a)
figure
subplot(2,1,1)
stem(x)
title('Chebyshev II Stem')
xlabel('n')
ylabel('Magnitude')
subplot(2,1,2)
grpdelay(b,a)