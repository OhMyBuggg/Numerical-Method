clear all;
x = (0.42-0.24)/0.12;
f = inline('0.77334 + s*(-0.02963) + s*(s-1)*(-0.00995)/2 ','s');
ans = f(x);
e1 = inline('s*(s-1)*(s-2)*0.00172/6 + s*(s-1)*(s-2)*(s-3)*0.00028/24','s'); 
err1 = e1(x);

y = (0.42-0.36)/0.12;
g = inline('0.74371 + s*(-0.03958) + s*(s-1)*(-0.00823)/2 ','s');
ans2 = g(y);
e2 = inline('s*(s-1)*(s-2)*0.00200/6','s');
err2 = e2(y);