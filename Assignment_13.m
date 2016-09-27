clear all;
m = 50;

pick = 100;

wn = 1000/2000;
z = cheby1(m,pick,wn);
freqz(z,1,100,2000);