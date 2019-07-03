clear all;
syms x;
ans = pade(x*exp(x));

ans2 = chebyshevpade(x*exp(x));