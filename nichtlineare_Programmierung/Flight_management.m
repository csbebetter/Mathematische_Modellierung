%飞行管理问题，使用matlab处理数据
%使用lingo进行规划问题求解
clc,clear
x0=[150,85,150,145,130,0];
y0=[140,85,155,50,150,0];
q=[243,236,220.5,159,230,52];
xy0=[x0;y0]; 
d0=dist(xy0);  %计算距离
d0(d0 ==0)=inf;  %用inf替换0
a0=asind(8./d0);  %反正弦，以度为单位
b0=zeros(6,6);
xy1=x0+1i*y0;  %引入负数，表示坐标
xy2=exp(1i*q*pi/180);  %将方向角转化为单位方向向量
for m = 1:6
    for n =1:6
        if n~=m
            b0(m,n)=angle((xy2(n)-xy2(m))/(xy1(m)-xy1(n)));
        end
    end
end
b0=b0*180/pi;
dlmwrite('txt1.txt',a0,'delimiter','\t','newline','PC');
dlmwrite('txt1.txt','~','-append');  %往纯文本文件中写入lingo数据的分隔符
dlmwrite('txt1.txt',b0,'delimiter','\t','newline','PC','-append','roffset',1);
