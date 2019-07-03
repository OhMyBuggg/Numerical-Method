clear all;

h = pi/2;
f = inline('2*sin(x/2)','x');

i = 0:h:pi;
true = f(i);

x0 = (true(2)-true(1))*2/pi;
y1 = 0 + h*x0;

 err = abs((y1-true(2))/y1);