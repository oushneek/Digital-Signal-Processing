clear all;

%unit impule%
x=-5:1:5;
y=[0 0 0 0 0 1 0 0 0 0 0];
subplot(3,1,1);stem(x,y);




%unit step%
 
 a=-5:1:5;
 b=[0 0 0 0 0 0 0 0 0 0 0];
for i = 1:length(b)
    if a(i)>-1
        b(i)=a(i);
    end
end
subplot(3,1,2);stem(a,b);



%exponential%


m=2;
n=-5:1:5;

subplot(3,1,3);stem(n,m.^n);
