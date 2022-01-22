%%
f = [-2;-3 ;5];
a = [-2 5 -1; 1 3 1]; b = [ -10; 12 ];
aeq = [1 1 1];
beq = 7;
[x, y] = linprog(f, a, b,aeq, beq, zeros(3,1));
x;
y=-y;
disp(x);

%%
c=[2;3;1];
a=[1,4,2;3,2,0];
b=[8;6];
[x,y]=linprog(c,-a,-b,[],[],zeros(3,1)); %Es gibt keine Gleichheitsbeschränkung und die entsprechende Matrix ist leer
disp(x);
disp(y);
