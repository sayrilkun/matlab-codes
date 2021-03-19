clc;
clear all;
close all; 

t = 0:1/8e3:0.25;
y = 0.5*(square(2*pi*30*t)+1);

figure;
subplot 211
title('square impulse')
plot(t,y)

subplot 212
Cx=[1.0690+0.0000i, 0.0677+0.0011i, 0.0726+0.0008i, 0.0770-0.0002i, 0.0878-0.0004i, 0.1115+0.0009i, 0.1625+0.0025i, 0.4305+0.0053i, -0.3811-0.0054i, -0.1097-0.0025i];
X=ifft(Cx)
plot(X)