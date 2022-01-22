% unifrnd生成随机数
% 区间由前两个参数决定，个数（矩阵）由第三个参数决定
clc,clear
x = unifrnd(0,12,[1,10000000]);
y = unifrnd(0,9,[1,10000000]);
pinshu = sum(y<x.^2 & x<=3) + sum(y<12-x & x>=3);  %sum在相应区间范围的个数
area_appr = 12*9*pinshu/10^7;  %相当于正方形划分
disp(area_appr);