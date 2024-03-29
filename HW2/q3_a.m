clear;

A = [ 4.63, -1.21, 3.22; -3.07, 5.48, 2.11; 1.26, 3.11, 4.57];
b = [ 2.22; -3.17; 5.11];

L = [ 0, 0, 0; -3.07, 0, 0; 1.26, 3.11, 0];
D = [ 4.63, 0, 0; 0, 5.48, 0; 0, 0, 4.57];
U = [ 0, -1.21, 3.22; 0, 0, 2.11; 0, 0, 0];

x = [ 0; 0; 0];

ans = -inv(D)*(L+U)*x + inv(D)*b;

for i = 1:275
    ans = -inv(D)*(L+U)*ans + inv(D)*b;
end