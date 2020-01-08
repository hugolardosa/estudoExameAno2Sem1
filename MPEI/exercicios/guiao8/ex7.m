  % a   b   c 
T= [0.8 0.1 0.05;
    0.2 0.6 0.20;
    0   0.3 0.75];

X0=[100 200 30]';

X3 = T^3*X0

X365 = T^365 * X0


i=1
teste = X0
while(true)
    teste =   T * teste;
    if(teste(3)>= 130)
        n=i;
        break;
    end
end


 %% Alina C
 tester = X0
for i = 0:400
    tester = T * tester;
    if(tester(3) >= 130)
        n=i
        break;
    end 
end

