 H1=[2 10 23 34 31 16 4]; 
 H2=[6 31 74 102 74 31 6];
num = input('Numerator coefficient vector = ');
den = input('Denominator coefficient vector = ');
[b,a] = eqtflength(num,den);
[z,p,k] = tf2zp(b,a);
sos = zp2sos(z,p,k)

fvtool(sos)
freqz(H2)
