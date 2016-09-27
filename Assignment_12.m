clear all;

wn=2000/5000;
m=50;
n=m-1;

w=Blackman(m);
b=fir1(m,wn,'high');

freqz(b,1,100,2000);