clear;

A = [ 4, -1, 0; -1, 4, -1; -1, 4, -1; -1, 4, -1; -1, 4, -1; 0, -1, 4];
d = [ 100; 200; 200; 200; 200; 100];

a = [ 0; -1; -1; -1; -1; -1];
b = [ 4; 4; 4; 4; 4; 4];
c = [ -1; -1; -1; -1; -1; 0];

for i = 1:5
    if i == 1
        cc(i) = c(i)/b(i);
    else
        cc(i) = c(i)/(b(i)-a(i)*cc(i-1));
    end
end

for j = 1:6
    if j == 1
        dd(j) = d(j)/b(j);
    else
        dd(j) = (d(j)-a(j)*dd(j-1))/(b(j)-a(j)*cc(j-1));
    end
end

ans(6) = dd(6);
for k = 5:-1:1
    ans(k) = dd(k)-cc(k)*ans(k+1);
end

