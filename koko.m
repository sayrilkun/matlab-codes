x=[1:5];
b = [ 1 5]; a = [ 1 -2];
h = impz(b,a)
y = conv (h,x)
figure;

subplot 211
stem(1:5,x);
title('Input Signal');

subplot 212
stem(1:length(y),y); 
title('Output Signal');
