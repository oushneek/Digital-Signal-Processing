clear all;
xn=[0 1 2 3 1];
hn=[1 2 1 -1 0];

w=conv(xn,hn);
disp(w);