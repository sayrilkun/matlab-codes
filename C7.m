%?(?) = 10 cos(0.0026??2)+ ?(?)
clc;
clear all;
close all; 

n=0:200
w = -1 + (1+1)*rand(201,1)
x=10*cos(0.0026*pi*n.^2)+w;
stem(n,x,'b')