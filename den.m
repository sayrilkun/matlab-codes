% All pole IIR filter
%%
clc;
close all;
clear all;
%%
% Inputs
order = input('Enter order of the filter : ');
coeff = input('Enter coefficient array of all pole IIR filter going from 0 to M-1 : ' );
%%
A = zeros(order, order+1);      % A --> coefficient matrix
B = zeros(order, order+1);      % B --> coefficient matrix
K = zeros(1, order);
A(1,:) = coeff;
B(1,:) = fliplr(coeff);
K(1) = A(1, end);
%%
[A, B, K] = matrix_sub_func(A, B, K, order);
disp(A);
disp(B);
disp(K);