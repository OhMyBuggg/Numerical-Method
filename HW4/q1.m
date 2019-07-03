clear all;
x0 = 0.15;
x1 = 0.21;
x2 = 0.23;
x3 = 0.27;
x4 = 0.32;
x5 = 0.35;

f = inline('1+log10(x)','x');
f0 = f(x0);
f1 = f(x1);
f2 = f(x2);
f3 = f(x3);
f4 = f(x4);
f5 = f(x5);

ff0 = (f1-f0)/(x1-x0);
ff1 = (f2-f1)/(x2-x1);
ff2 = (f3-f2)/(x3-x2);
ff3 = (f4-f3)/(x4-x3);
ff4 = (f5-f4)/(x5-x4);

fff0 = (ff1-ff0)/(x2-x0);
fff1 = (ff2-ff1)/(x3-x1);
fff2 = (ff3-ff2)/(x4-x2);
fff3 = (ff4-ff3)/(x5-x3);

ffff0 = (fff1-fff0)/(x3-x0);
ffff1 = (fff2-fff1)/(x4-x1);
ffff2 = (fff3-fff2)/(x5-x2);

fffff0 = (ffff1-ffff0)/(x4-x0);
fffff1 = (ffff2-ffff1)/(x5-x1);

ffffff0 = (fffff1-fffff0)/(x5-x0);

e1 = inline('8.7494*((x-0.21)*(x-0.23)+(x-0.23)*(x-0.27)+(x-0.27)*(x-0.21))','x');
e2 = inline('5.964*((x-0.23)*(x-0.27)+(x-0.27)*(x-0.32)+(x-0.32)*(x-0.23))','x');

p = inline('1.7409 + -2.9464*(x-0.23+x-0.27)','x');

err1 = abs(e1(0.268));
err2 = abs(e2(0.268));

ans = p(0.268);