%%
hold on
x=linspace(0, 2*pi, 100);  
y=sin(x); z=cos(x);  %基本函数
plot(x,y,'-',x,z);  %基本绘图
legend('sin(x)','cos(x)');  %注解
title('test');  %标题
xlabel('x'); ylabel('y or z');  %坐标标注
str='$$ \sin x $$';  text(1.34,0.6,str,'Interpreter','latex');  %图表中加入latex公式
annotation('arrow','x',[0.3 0.6],'y',[0.1 0.5]);  %创建注释
    %annotation(lineType,x,y) 创建一个在当前图窗中的两个点之间延伸的线条或箭头注释。
    %将 lineType 指定为 'line'、'arrow'、'doublearrow' 或 'textarrow'。
    %将 x 和 y 分别指定为 [x_begin x_end] 和 [y_begin y_end] 形式的二元素向量。
hold off

%%
%设置figure axes line相关操作
x=linspace(0, 2*pi, 100);  
y=sin(x); z=cos(x); 
figure('Position',[311 211 360 220]),plot(x,z);
figure,h=plot(x,y);
get(h);  %line property
get(gca);  %axes property
set(gca, 'XLim', [0 2*pi]);
set(gca, 'FontSize', 25);
set(gca,'XTick', 0:pi/2:2*pi);
set(gca,'XTickLabel', {'0','\pi/2','\pi','3\pi/2','2\pi'}); 
set(h, 'LineStyle', '-.', 'LineWidth', 7.0, 'color', 'g');
