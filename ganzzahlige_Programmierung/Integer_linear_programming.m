%%
%例2.7
clc,clear
c=[3 8 2 10 3
    8 7 2 9 7
    6 4 2 7 5
    8 4 2 3 5 
    9 10 6 9 10];
c=c(:);  %转化为列向量
%a，b为等式约束中重要的一部分
%保证每人只做一项工作
%每一项工作只有一个人做
a=zeros(10,25);
intcon=1:25;
for i=1:5
    a(i,(i-1)*5+1:5*i)=1;
    a(5+i,i:5:25)=1;
end
b=ones(10,1);
lb=zeros(25,1);
ub=ones(25,1);
x=intlinprog(c,intcon,[],[],a,b,lb,ub);
x=reshape(x,[5,5]);

%%
%例2.8
clc ,clear
f=[-3; -2;-1];intcon=3;
a=ones(1,3); b=7;
aeq=[4 2 1];beq=12;
lb=zeros(3,1);ub=[inf;inf;1];
x=intlinprog(f,intcon,a,b,aeq,beq,lb,ub);