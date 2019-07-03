clear all;
syms u;
uu = [u^3 u^2 u 1];
M = [-1 3 -3 1; 3 -6 3 0; -3 0 3 0; 1 4 1 0];
t = [1.3 0.2 2.521; 1.3 0.4 2.792; 1.3 0.5 2.949; 1.3 0.7 3.314; 2.5 0.2 3.721; 2.5 0.4 3.992; 2.5 0.5 4.149; 2.5 0.7 4.514; 3.1 0.2 4.321; 3.1 0.4 4.592; 3.1 0.5 4.749; 3.1 0.7 5.114; 4.7 0.2 5.921; 4.7 0.4 6.192; 4.7 0.5 6.349; 4.7 0.7 6.714];
p1 = [1.3 0.2 2.521; 1.3 0.4 2.792; 1.3 0.5 2.949; 1.3 0.7 3.314];
p2 = [1.3 0.4 2.792; 1.3 0.5 2.949; 1.3 0.7 3.314; 2.5 0.2 3.721];
p3 = [1.3 0.5 2.949; 1.3 0.7 3.314; 2.5 0.2 3.721; 2.5 0.4 3.992];
p4 = [1.3 0.7 3.314; 2.5 0.2 3.721; 2.5 0.4 3.992; 2.5 0.5 4.149];
p5 = [2.5 0.2 3.721; 2.5 0.4 3.992; 2.5 0.5 4.149; 2.5 0.7 4.514];
p6 = [2.5 0.4 3.992; 2.5 0.5 4.149; 2.5 0.7 4.514; 3.1 0.2 4.321];
p7 = [2.5 0.5 4.149; 2.5 0.7 4.514; 3.1 0.2 4.321; 3.1 0.4 4.592];
p8 = [2.5 0.7 4.514; 3.1 0.2 4.321; 3.1 0.4 4.592; 3.1 0.5 4.749];
p9 = [3.1 0.2 4.321; 3.1 0.4 4.592; 3.1 0.5 4.749; 3.1 0.7 5.114];
p10 = [3.1 0.4 4.592; 3.1 0.5 4.749; 3.1 0.7 5.114; 4.7 0.2 5.921];
p11 =[3.1 0.5 4.749; 3.1 0.7 5.114; 4.7 0.2 5.921; 4.7 0.4 6.192];
p12 = [3.1 0.7 5.114; 4.7 0.2 5.921; 4.7 0.4 6.192; 4.7 0.5 6.349];
p13 = [4.7 0.2 5.921; 4.7 0.4 6.192; 4.7 0.5 6.349; 4.7 0.7 6.714];


P1 = (1/6)*uu*M*p1;
P2 = (1/6)*uu*M*p2;
P3 = (1/6)*uu*M*p3;
P4 = (1/6)*uu*M*p4;
P5 = (1/6)*uu*M*p5;
P6 = (1/6)*uu*M*p6;
P7 = (1/6)*uu*M*p7;
P8 = (1/6)*uu*M*p8;
P9 = (1/6)*uu*M*p9;
P10 = (1/6)*uu*M*p10;
P11 = (1/6)*uu*M*p11;
P12 = (1/6)*uu*M*p12;
P13 = (1/6)*uu*M*p13;

ezplot3('13/10', 'u^3/30 - u^2/20 + (3*u)/20 + 23/60', '(161*u^3)/3000 - (57*u^2)/1000 + (107*u)/500 + 2773/1000',[0 1 0 1 0 1]);
hold on;

ezplot3('u^3/5 + 13/10', '- (2*u^3)/15 + u^2/20 + (3*u)/20 + 31/60', '- (83*u^3)/3000 + (13*u^2)/125 + (261*u)/1000 + 8951/3000',[0 1 0 1 0 1]);
hold on;

ezplot3('- (2*u^3)/5 + (3*u^2)/5 + (3*u)/5 + 3/2', '(7*u^3)/30 - (7*u^2)/20 - (3*u)/20 + 7/12', '- (89*u^3)/3000 + (21*u^2)/1000 + (193*u)/500 + 3321/1000',[0 1 0 1 0 1]);
hold on;

ezplot3('u^3/5 - (3*u^2)/5 + (3*u)/5 + 23/10', '- (2*u^3)/15 + (7*u^2)/20 - (3*u)/20 + 19/60', '(11*u^3)/3000 - (17*u^2)/250 + (339*u)/1000 + 2219/600',[0 1 0 1 0 1]);
hold on;

ezplot3('5/2', 'u^3/30 - u^2/20 + (3*u)/20 + 23/60', '(161*u^3)/3000 - (57*u^2)/1000 + (107*u)/500 + 3973/1000',[0 1 0 1 0 1]);
hold on;

ezplot3('u^3/10 + 5/2', '- (2*u^3)/15 + u^2/20 + (3*u)/20 + 31/60', '- (383*u^3)/3000 + (13*u^2)/125 + (261*u)/1000 + 12551/3000',[0 1 0 1 0 1]);
hold on;

ezplot3('- u^3/5 + (3*u^2)/10 + (3*u)/10 + 13/5', '(7*u^3)/30 - (7*u^2)/20 - (3*u)/20 + 7/12', '(511*u^3)/3000 - (279*u^2)/1000 + (43*u)/500 + 4421/1000',[0 1 0 1 0 1]);
hold on;

ezplot3('u^3/10 - (3*u^2)/10 + (3*u)/10 + 3', '- (2*u^3)/15 + (7*u^2)/20 - (3*u)/20 + 19/60', '- (289*u^3)/3000 + (29*u^2)/125 + (39*u)/1000 + 2639/600',[0 1 0 1 0 1]);
hold on;

ezplot3('31/10', 'u^3/30 - u^2/20 + (3*u)/20 + 23/60', '(161*u^3)/3000 - (57*u^2)/1000 + (107*u)/500 + 4573/1000',[0 1 0 1 0 1]);
hold on;

ezplot3('(4*u^3)/15 + 31/10', '- (2*u^3)/15 + u^2/20 + (3*u)/20 + 31/60', '(39*u^3)/1000 + (13*u^2)/125 + (261*u)/1000 + 14351/3000',[0 1 0 1 0 1]);
hold on;

ezplot3('- (8*u^3)/15 + (4*u^2)/5 + (4*u)/5 + 101/30', '(7*u^3)/30 - (7*u^2)/20 - (3*u)/20 + 7/12', '- (163*u^3)/1000 + (221*u^2)/1000 + (293*u)/500 + 15563/3000',[0 1 0 1 0 1]);
hold on;

ezplot3('(4*u^3)/15 - (4*u^2)/5 + (4*u)/5 + 133/30', '- (2*u^3)/15 + (7*u^2)/20 - (3*u)/20 + 19/60', '(211*u^3)/3000 - (67*u^2)/250 + (539*u)/1000 + 3499/600',[0 1 0 1 0 1]);
hold on;

ezplot3('47/10', 'u^3/30 - u^2/20 + (3*u)/20 + 23/60', '(161*u^3)/3000 - (57*u^2)/1000 + (107*u)/500 + 6173/1000',[0 1 0 1 0 1]);
hold on;