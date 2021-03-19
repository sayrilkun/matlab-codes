clc;
clear all;
close all; 

n=0:20;
b=(0.9.^n).*(cos(pi*n))+((4*pi)/3);
stem(n,b,'b')
