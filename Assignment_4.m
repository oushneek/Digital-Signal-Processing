clear all;

% DFT %

x=[2 1 2 1];

exp_power=[0 0 0 0];
for m=1:4
   exp_power(m)=2*pi*(m-1)/4;
end
DFT_X=[0 0 0 0];

for k=0:3
    xk=[0 0 0 0];
    for m=1:4
        theta=exp_power(m)*k;
        xk(m)=x(m)*(cos(theta)-1i*sin((theta)));
    end
    DFT_X(k+1)=sum(xk)
end
disp(DFT_X);

