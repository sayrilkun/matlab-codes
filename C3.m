%?(?) = 2?(? ? 5)? 3?(? + 4)
clc;
clear all;
close all; 

x=0:20
n=0:20;
[y1,n1]=sigshift(x,n,5);
[y2,n2]=sigshift(x,n,-4);
[x1,n1]=sigadd(2*y1, n1,-3*y2, n2);
stem(n1,x1,'b')