T= [0 0.5 0 0;
    1.0 0 0.6 0.6;
    0 0 0 0.4;
    0 0.5 0.4 0];

X0 = [0.25;0.25;0.25;0.25];
Xteste = markov_estacionario(T, X0, 0)
%metodo u
M = [T - eye(size(T)); ones(1,4)];
X = [zeros(4,1); 1];

u = M\X

c = [M X];
rref(c)
