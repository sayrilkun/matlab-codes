function y = dt_1_x4(x)

[x,fs] = audioread('x4.wav');
audiowrite('x4.wav',x,fs)

y = zeros(1,length(x));
for n = 1:length(x)
    
    if n<2
        y(n) = x(n);
    else
        y(n) = 0.5*x(n) + 0.5*x(n-1);
    end
end

figure;

subplot 211
plot(1:length(x),x);
title('Input Signal');
soundsc(x,fs) %(mono)

subplot 212
plot(1:length(y),y)
title('Output Signal');
soundsc(y,fs)

end

