clc;
clear all;
close all; 

n=0:20
a=zeros(1,length(n));
for m= 0:10
    a=a+(m+1)*(impseq(2*m,0,20)-impseq(2*m+1,0,20));
end
stem(n,a,'b')