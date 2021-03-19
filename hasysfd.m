x=[1:5]
b=length(x)
y = zeros(1,length(x))
for n = 1:length(x)
    
    if n<=2
        y(n) = x(n);
    else
        y(n) = x(n) - 2*y(n-1) - 2*y(n-2);
        
       
    end
end

figure;

subplot 211
stem(1:5,x);
title('Input Signal');

subplot 212
stem(1:5,y); 
title('Output Signal');