[n,Wn]=ellipord([2500 4000]/10000, [2000 4500]/10000, 40, 55);
[b,a]=ellip(n, 40, 55 , Wn);
b=[1 -0.550658651483331484932648436370072886348 1];
a=[1 -1.922958079880881188117314195551443845034  0.997773516844234986677975030033849179745];

c=filter(b,a,noisy);
sound(c,fs)
n=1804;
x=c(1:n:end);

freqz(b,a)
figure
subplot(2,1,1)
stem(x)
title('Elliptic Stem')
xlabel('n')
ylabel('Magnitude')
subplot(2,1,2)
grpdelay(b,a)