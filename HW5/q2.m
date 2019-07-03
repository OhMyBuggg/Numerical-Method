clear all;
syms h;
A = [1 1 1 1; -2*h -h 0 h; 4*h^2 h^2 0 h^2; -8*h^3 -h^3 0 h^3];
b = [h; h^2/2; h^3/3; h^4/4];
c = inv(A)*b;