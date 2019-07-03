clear all;
t = 0;
x = [0];

f = @(t,x)[x(1)];

[t,x] = ode45(f,[0, 0.2], x);