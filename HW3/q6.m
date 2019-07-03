clear all;
A = [1 0.4 0.7; 1 1.2 2.1; 1 3.4 4; 1 4.1 4.9; 1 5.7 6.3; 1 7.2 8.1; 1 9.3 8.9];
b = [0.031; 0.933; 3.058; 3.349; 4.870; 5.757; 8.921];
M = transpose(A)*A;
B = transpose(A)*b;

a = inv(M)*B;

r = b - A*a;
sum = 0;
sum = sum + r(1)*r(1);
sum = sum + r(2)*r(2);
sum = sum + r(3)*r(3);
sum = sum + r(4)*r(4);
sum = sum + r(5)*r(5);
sum = sum + r(6)*r(6);
sum = sum + r(7)*r(7);