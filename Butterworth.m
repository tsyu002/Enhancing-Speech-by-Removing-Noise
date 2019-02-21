[n,Wn]=buttord([2500 4000]/10000, [2000 4500]/10000, 40, -55);
[b,a]=butter(n,Wn);
b=[1 2 1];
a=[1 -1.898489880951372166251189810282085090876  0.912278486781785136194855567737249657512];

c=filter(b,a,noisy);
sound(c,fs)
n=1804;
x=c(1:n:end);

freqz(b,a)
figure
subplot(2,1,1)
stem(x)
title('Butterworth Stem')
xlabel('n')
ylabel('Magnitude')
subplot(2,1,2)
grpdelay(b,a)