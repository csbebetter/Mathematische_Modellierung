clc,clear
syms x y

f=x^3-y^3+3*x^2+3*y^2-9*x;

df=jacobian(f);  %一阶偏导
d2f=jacobian(df);  %海森矩阵

[xx,yy]=solve(df); %求驻点
xx=double(xx);yy=double(yy);  %转化为双精度浮点型数据

%借助海森矩阵处理驻点，判断极值
for i = 1:length(xx)
    a=subs(d2f,{x,y},{xx(i),yy(i)});
    b=eig(a);  %求矩阵特征值
    f=subs(f,{x,y},{xx(i),yy(i)});f=double(f);
    if all(b>0)
        fprintf('(%f,%f)是极小值点，对应的极小值是%f\n',xx(i),yy(i),f);
    elseif all(b<0)
        fprintf('(%f,%f)是极大值点，对应的极大值是%f\n',xx(i),yy(i),f);
    elseif any(b>0) && any(b<0)
        fprintf('(%f,%f)不是极值点\n',xx(i),yy(i));
    else
        fprintf('无法判断(%f，%f)是否为极值点\n',xx(i),yy(i));
    end
end

    