clear all;
A = [1 0 0 0 0; 1 -2 1 0 0; 0 1 -2 1 0; 0 0 1 -2 1; 0 0 0 0 1];
h = pi/4;
f = inline('2*sin(x/2)','x');
i = 0:h:pi;
true = f(i);
i = h:h:pi-h;
b = [0 f(i).*-h^2/4 2];

y = inv(A) * transpose(b);

for i = 1:1:5
    err(i) = abs((y(i)-true(i))/y(i));
end


