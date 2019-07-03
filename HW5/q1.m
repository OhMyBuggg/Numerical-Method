clear all;
v = inline('y.^2 + t.^2','y','t');
x = 0;
h = 0.1;
t = 0;
for i = 1:h:2-h
    x = x + h*v(i,t);
    t = t+h;
end
ans1 = x;

h = 0.05;
t = 0;
x = 0;
for i = 1:h:2-h
    x = x + h*v(i,t);
    t = t+h;
end
ans2 = x;

ans3 = ans2 + (ans2-ans1)/3;