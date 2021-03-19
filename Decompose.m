function [Xod, Xevn] = Decompose(X)
Xf=fliplr(X);
Xod=1/2*(X+Xf)
Xevn=1/2*(X-Xf)
subplot(2,1,1)
stem(Xod)
subplot(2,1,2)
stem(Xevn)

end

