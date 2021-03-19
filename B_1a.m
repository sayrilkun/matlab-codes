clc;
clear all;
close all; 

syms z n
l=heaviside(n-3)
a=ztrans((((4/3)^n)*l));
fprintf('ztransform:\n');
fprintf('X(z)=');
disp(a);
disp('ROC:');
disp('|z| > 4/3');

b=[0,0,0,0,27];
a=[64,32];
[delta,n]=impseq(0,0,24);
x=filter(b,a,delta)
plot(x)