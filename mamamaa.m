
function y = dt_4(x,L)
b=[1]; a=[1 -0.5 -0.5];
h = impz(b,a)
y = conv (h,x);
z=interp(y,1)
figure;

subplot 211
stem(1:5,x);
title('Input Signal');

subplot 212
stem(1:length(z),z); 
title('Output Signal');


