clc;
clear all;
close all; 

n=0:50
x=[1,2,3,4,5,4,3,2]
a=[1,2,3]
b=repmat(x,1,6)
c=[b a]
stem(n,c,'b');
