clear all;
x=[1 2 3 1];
x_z_index=1;

h=[1 2 1 -1];
h_z_index=2;

n=length(x)+length(h)-1;

xn=[x,zeros(1,length(x)-1)];
xnz=x_z_index;


hn=[h,zeros(1,length(h)-1)];
h_minus_n=zeros(1,n);

for i=1:length(hn)
   h_minus_n(i)=hn(length(hn)-i+1);
end

hnz=length(h_minus_n)-h_z_index+1;
convol_reverse=zeros(1,h_minus_n);

for k=1:length(h_minus_n)
    h_zero=k;
    sum=0;
    x_index=1;
    for i=h_zero:length(h_minus_n)
        sum=sum+(h_minus_n(i)*xn(x_index));
        x_index=x_index+1;
    end
    convol_reverse(k)=sum;
end

convolution=zeros(1,length(h_minus_n));
for i=1:length(h_minus_n)
   convolution(i)= convol_reverse(length(hn)-i+1);
end
disp(convolution);