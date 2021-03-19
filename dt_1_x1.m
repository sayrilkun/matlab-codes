function y = dt_1_x1(x)

[x,fs] = audioread('x1.wav');
audiowrite('x1.wav',x,fs)

y = zeros(1,length(x));
for n = 1:length(x)
    
    if n<2
        y(n) = x(n);
    else
        y(n) = 0.5*x(n) + 0.5*x(n-1);
    end
end

figure;

subplot 511
plot(1:length(x),x);
title('Input Signal');
soundsc(x,fs) % sound of both left and right channels(stereo)

pad=zeros(length(x),1);  % blank channel
left=[x(:,1),pad];       % add blank channel so right is silent
soundsc(left,fs)         % sound only from left
right=[pad,x(:,2)];      % add blank channel so left is silent
soundsc(right,fs)        % sound only from right

subplot 512
plot(1:length(x),x(:,1))
title('Input Signal (Left Channel)');

subplot 513
plot(1:length(x),x(:,2))
title('Input Signal (Right Channel)');
soundsc(x,fs)            % sound of both left and right channels(stereo)

subplot 514
plot(1:length(y), y(:,1))
title('Output Signal');
soundsc(y,fs)

subplot 515
plot(1:length(y), y(:,2))
title('Output Signal');
soundsc(y,fs)

end

