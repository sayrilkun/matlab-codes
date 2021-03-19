%?(?) = ?(3? ?)??(?)?(? ? 2)
clc;
clear all;
close all; 

x=0:20;
n=0:20;
[y1,n1]=sigfold(x,n);
[y2,n2]=sigshift(y1,n1,3);

[y3,n3]=sigshift(x,n,2);
[y4,n4]=sigmult(x,n,y1,n1);

[x2,m]=sigadd(y2, n2,-y4, n4);
stem(m,x2,'b')
