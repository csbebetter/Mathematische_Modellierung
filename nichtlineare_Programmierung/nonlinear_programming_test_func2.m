function [g,h] = nonlinear_programming_test_func2(x)
g=[-x(1)^2+x(2)-x(3)^2
    x(1)+x(2)^2+x(3)^3-20];  %非线性不等式约束
h=[-x(1)-x(2)^2+2
    x(2)+2*x(3)^2-3];  %非线性等式约束