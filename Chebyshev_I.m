[n,Wn]=cheb1ord([2500 4000]/10000, [2000 4500]/10000, 40, -55);
%[b,a]=cheby1(n,[2000 4500]/10000, Wn);
b=[1 2 1];
a=[1 -1.903987210765996529460153396939858794212  0.998829101259112062116685137880267575383];
c=filter(b,a,noisy);
sound(c,fs)
n=1804;
x=c(1:n:end);

freqz(b,a)
figure
subplot(2,1,1)
stem(x)
title('Chebyshev I Stem')
xlabel('n')
ylabel('Magnitude')
subplot(2,1,2)
grpdelay(b,a)