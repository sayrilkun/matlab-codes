num=input('Numerator coefficient vector =');
den=input('Denominator coefficient vector =');
[r1,p1,k1]=residuez(num,den);
[r2,p2,k2]=residue(num,den);
disp('Parallel Form I')
disp('Residues are');disp(r1);
disp('Poles are at ');disp(p1);
disp('Constant Value');disp(k1);

disp('Parallel Form II')
disp('Residues are');disp(r2);
disp('Poles are at ');disp(p2);
disp('Constant Value');disp(k2);