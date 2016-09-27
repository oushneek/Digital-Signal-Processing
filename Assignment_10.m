clear all;

x1=[2 1 2 1];
x2=[1 2 3 4];

X1K=fft(x1);
X2K=fft(x2);

YK=zeros(1,length(x1));

for i=1:length(x1)
   YK(i)=X1K(i)*X2K(i); 
end

yn=ifft(YK);

disp(yn);