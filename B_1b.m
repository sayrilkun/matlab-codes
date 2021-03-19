clc;
clear all;
close all; 

syms z n
a=ztrans((2^-n)+(1/3)^n);
fprintf('ztransform:\n');
fprintf('X(z)=');
disp(a);
disp('ROC:');
disp('|a|Rx');

b=[5/6,2];
a=[1,0,1];
[delta,n]=impseq(0,0,24);
x=filter(b,a,delta)
plot(x)