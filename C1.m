%?(?) = 2?(? +2) ? ?(? ? 4) 
clc;
clear all;
close all; 

n=-5:5;
z=2*impseq(-2,-5,5)-impseq(4,-5,5);
stem(n,z,'b');