T = [0  0   1/2 0   1/2 1/5;
    1/2 1/3 1/2 1/2 1/2 1/5;
    0   0   0   0   0   1/5;
    0   1/3 0   0   0   1/5;
    1/2 0   0   1/2 0   1/5;
    0   1/3 0   0   0   0];
X0= [1/6 1/6 1/6 1/6 1/6 1/6]';

X3= T^3 * X0
%% 
n= (1:100)
for i = 1:100
    trasicao = T^i;
    plotA(i) = trasicao(1);
    plotB(i) = trasicao(2);
    plotC(i) = trasicao(3);
    plotD(i) = trasicao(4);
    plotE(i) = trasicao(5);
    plotF(i) = trasicao(6);
end
hold on
plot(n,plotA);
plot(n,plotB);
plot(n,plotC);
plot(n,plotD);
plot(n,plotE);
plot(n,plotF);