%% 多项式求解
clc, clear
koeffizient=[1,-1,2,-3]; %从高此项到低次项
x0=roots(koeffizient)

%% 符号求解
syms x
x0 = solve(x^3-x^2+2*x-3);
x0=vpa(x0,5)

%% 数值解
y = @ (x) x^3-x^2+2*x-3;
x=fsolve(y,rand)
