clear all;

% x(n)=sin2PiF1t + sin2PiF2t +sin2PiF3t %

f1=.5;
f2=1;
f3=1.5;

t=-3:.01:3;

subplot(4,1,1);plot(t,sin(2*pi*f1*t));
subplot(4,1,2);plot(t,sin(2*pi*f2*t));
subplot(4,1,3);plot(t,sin(2*pi*f3*t));
subplot(4,1,4);plot(t,(sin(2*pi*f1*t)+sin(2*pi*f2*t)+sin(2*pi*f3*t)));