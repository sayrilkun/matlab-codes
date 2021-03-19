clc;
clear all;
close all; 

t = 0:1/8e3:0.25;
y = 0.5*(square(2*pi*30*t)+1)

figure;

subplot 211
title('square impulse')
plot(t,y)

T = 0:1/8e3:0.025;
Y=square_dtp(length(T),1)

subplot 212
title('one period square impulse')
plot(T,Y)



