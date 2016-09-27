clear all;

wn=1000/5000;
m=50;
n=m-1;

w=Blackman(m);
b=fir1(n,wn,'low',w);

freqz(b,1,100,2000);