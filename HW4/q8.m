clear all;
syms m;
syms x;
Am = int(exp(-x)*sin(2*x-1)*cos(m*pi*x/2),x,0,2);
Bm = 0;
A0 = int(exp(-x)*sin(2*x-1),x,0,2);