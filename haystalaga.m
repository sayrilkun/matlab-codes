t = 0:1/1e3:1;
x = sin(2*pi*30*t) + sin(2*pi*60*t);
y = interp(x,100);
subplot(2,1,1)
stem(0:30,x(1:31),'filled','MarkerSize',3)
grid on
xlabel('Sample Number')
ylabel('Original')

subplot(2,1,2)
stem(0:120,y(1:121),'filled','MarkerSize',3)
grid on
xlabel('Sample Number')
ylabel('Interpolated')