
rp = 40;           
rs = 55;        
fs = 44100;        
f = [2500 4000];    
a = [1 0];       

dev = [(10^(rp/20)-1)/(10^(rp/20)+1)  10^(-rs/20)]; 
[n,fo,ao,w] = firpmord(f,a,dev,fs);
b = firpm(n,fo,ao,w);
freqz(b,1,1024,fs)
title('Parks-McClellan')

b=[1 -0.347667587751099960158285284705925732851 1];

a=[1 -1.883629051204415150166937564790714532137   0.895511519474980310917544557014480233192];

c=filter(b,a,noisy);
sound(c,fs)
n=1804;
x=c(3:n:end);

figure
subplot(2,1,1)
stem(x)
title('Parks-McClellan Stem')
xlabel('n')
ylabel('Magnitude')
subplot(2,1,2)
grpdelay(b,a)