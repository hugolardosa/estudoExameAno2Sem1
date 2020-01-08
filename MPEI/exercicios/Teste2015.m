   %a b c d
T=[0.89  0.1 0   0.5;
   0.1   0.7 0   0.1;
   0.05   0.1 0.8 0.1;
   0.01  0.1 0.2 0.3];
%alinea 2a
%Angola: 1 milhao de toneladas 
%Brasil: 2 milhoes de toneladas
%Chile: 10 milhoes de toneladas
%Dinamarca: 5 milhoes de toneladas
X0=[1 2 10 5]' * 10e6;
%alinea 2b
%2.9209 milh�es de toneladas
%2.0264 milh�es de toneladas
%9.8945 milh�es de toneladas
%3.1582 milh�es de toneladas

%%M�todo errado -> podemos usar para verificar os valores
%iremos calcula ao fim de 100, 1000,10000 itera��es 
    %uma vez que os valores n�o mudam � como se tivessemos calculado para o
    %infinito
X100 = T^100 * X0
X1000 = T^1000 * X0
X10000 = T^1000 * X0

%%M�todo correto
nM = size(T);
n = nM(1,1)
M= [T - eye(n); ones(1,n)]
x = [zeros(n,1);1]

u = M\x


%Em que dia, no formato dia do mes e mes, passa a Dinamarca a ter menos de 2 milhoes de
%toneladas disponiveis no seu territ�rio?

    %vamos realizar os calculos do numero n de itera��es 
    %sabemos assim que o dia � 1, o exercicio n�o deve estar 100 correto
    %assim 
%N�o tem logica pq Dinamarca j� tem 5 milhoess
i=1     
while(true)
    X = T^i * X0;
    if (X(4) < 2*10e6)
        break;
    end 
    i=i+1;
end
i