clear all;
x0 = 0.3;
x1 = 0.5;
x2 = 0.7;
x3 = 0.9;
x4 = 1.1;
x5 = 1.3;
x6 = 1.5;

f = inline('x+sin(x)/3','x');
f0 = f(x0);
f1 = f(x1);
f2 = f(x2);
f3 = f(x3);
f4 = f(x4);
f5 = f(x5);
f6 = f(x6);

ff0 = (f1-f0)/(x1-x0);
ff1 = (f2-f1)/(x2-x1);
ff2 = (f3-f2)/(x3-x2);
ff3 = (f4-f3)/(x4-x3);
ff4 = (f5-f4)/(x5-x4);
ff5 = (f6-f5)/(x6-x5);

fff0 = (ff1-ff0)/(x2-x0);
fff1 = (ff2-ff1)/(x3-x1);
fff2 = (ff3-ff2)/(x4-x2);
fff3 = (ff4-ff3)/(x5-x3);
fff4 = (ff5-ff4)/(x6-x4);

ffff0 = (fff1-fff0)/(x3-x0);
ffff1 = (fff2-fff1)/(x4-x1);
ffff2 = (fff3-fff2)/(x5-x2);
ffff3 = (fff4-fff3)/(x6-x3);

fffff0 = (ffff1-ffff0)/(x4-x0);
fffff1 = (ffff2-ffff1)/(x5-x1);
fffff2 = (ffff3-ffff2)/(x6-x2);

ffffff0 = (fffff1-fffff0)/(x5-x0);
ffffff1 = (fffff2-fffff1)/(x6-x1);

fffffff0 = (ffffff1-ffffff0)/(x6-x0);

p3 = inline('1.2747 + -0.10701*(x-0.5+x-0.7) + -0.038513*((x-0.5)*(x-0.7)+(x-0.7)*(x-0.9)+(x-0.9)*(x-0.5))','x');
ans1 = p3(0.72);

p2 = inline('1.1206 + -0.16006*(x-1.1+x-1.3)','x');
ans2 = p2(1.33);

p3 = inline('1.3065 + -0.079638*(x-0.3+x-0.5) + -0.045623*((x-0.3)*(x-0.5)+(x-0.5)*(x-0.7)+(x-0.7)*(x-0.3)) + 0.008888*((x-0.3)*(x-0.5)*(x-0.7)+(x-0.5)*(x-0.7)*(x-0.9)+(x-0.7)*(x-0.9)*(x-0.3)+(x-0.9)*(x-0.3)*(x-0.5))','x');
ans3 = p3(0.5);


