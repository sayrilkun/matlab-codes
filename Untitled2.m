num = input('Numerator coefficient vector = ');
den = input('Denominator coefficient vector = ');
[b,a] = eqtflength(num,den); % make lengths equal
[z,p,k] = tf2zp(b,a);
sos = zp2sos(z,p,k)