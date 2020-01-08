%%exercicio1
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
    X0 = T*X0;
    plotA(i) = X0(1);
    plotB(i) = X0(2);
    plotC(i) = X0(3);
    plotD(i) = X0(4);
    plotE(i) = X0(5);
    plotF(i) = X0(6);
end
hold on
plot(n,plotA);
plot(n,plotB);
plot(n,plotC);
plot(n,plotD);
plot(n,plotE);
plot(n,plotF);
