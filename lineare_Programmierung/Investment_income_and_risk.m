% 投资的收益与风险问题关键在于线性模型的建立
% matlab编程主要使用函数：linprog
%linprog(极值相关，小于号限制，等式限制，区间限制)
clc,clear
a=0;
hold on
while a<0.05
    c=[ -0.05, -0.27, -0.19, -0.185, -0.185];
    A=[ zeros(4,1),diag([0.025,0.015,0.055,0.026])];
    b=a*ones(4,1);
    Aeq=[1,1.01,1.02,1.045,1.065];
    beq=1;
    LB=zeros(5,1);
    [X,Q]=linprog(c,A,b,Aeq,beq,LB);
    Q=-Q;
    plot(a,Q,'*k');
    a=a+0.001;
end
hold off
xlabel('a'),ylabel('Q')