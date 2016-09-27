clear all;
xn=[1 2 3];
hn=[1 2 2 1];

n=length(xn)+length(hn)-1;

XK=fft(xn,n);
HK=fft(hn,n);

YK=zeros(1,n);

for i=1:n
    YK(i)=XK(i)*HK(i);
end

yn=ifft(YK,n);
disp(yn);
