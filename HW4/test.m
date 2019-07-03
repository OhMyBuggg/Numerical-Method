clear all;
syms x;
tol = 0.02;

h = 0.8;
x = 0.2:h:1;
y = 1./x.^2;
pre = 0;
for i = 1:length(x)-1
    pre = pre + (y(i)+y(i+1))*h/2;
end
h = h/2;

x = 0.2:h:1;
y = 1./x.^2;
next = 0;
for i = 1:length(x)-1
    next = next + (y(i)+y(i+1))*h/2;
end
h = h/2;

while( abs(next - pre) > tol)
    x = 0.2:h:1;
    y = 1./x.^2;
    pre = next;
    next = 0;
    for i = 1:length(x)-1
     next = next + (y(i)+y(i+1))*h/2;
    end
    h = h/2;
end
fprintf("ans: %d interval: %d", next, h);