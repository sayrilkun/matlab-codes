%?(?) = ?[?(?) ? ?(? ? 10)] +10??0.3(??10)[?(? ?10) ? ?(? ? 20)]
clc;
clear all;
close all; 

n=0:20;
y=10*exp((-0.3)*(n-10));
z=stepseq(10,0,20)-stepseq(20,0,20);
w=y.*z;
a=n.*(stepseq(0,0,20)-stepseq(10,0,20))+w;
stem(n,a,'b')