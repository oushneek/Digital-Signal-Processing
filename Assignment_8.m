clear all;
x1=[2 1 2 1];

x2=[1 2 3 4];

x2_minus_n=zeros(1,length(x2));
x2_minus_n(1)=x2(1);

for i=2:length(x2)
    x2_minus_n(i)=x2(length(x2)-i+2);
end

circular_convolution=zeros(1,length(x2));
for i=1:length(x2)
   sum=0;
   x1_index=1;
   
   if (i==1)
    x2_zero=i;
   else 
    x2_zero=length(x2)-i+2;
   end
   
   for k=x2_zero:x2_zero+3
       if (k<length(x2)+1)
           sum=sum+x1(x1_index)*x2_minus_n(k);
       else
           sum=sum+x1(x1_index)*x2_minus_n(k-4);
       end
       x1_index=x1_index+1;
   end
   circular_convolution(i)=sum;
end

disp(circular_convolution);
