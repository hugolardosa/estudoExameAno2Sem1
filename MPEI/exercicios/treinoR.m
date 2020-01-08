%% Como inverter colunas e linhas para deicxar uma matriz absorvente


T = [ 1 0 3;
      4 1 6 ;
      7 0 9]

lB = T(2,:);
lC = T(3,:);

 T(2,:) = lC;
 T(3,:) = lB;

cB = T(:,2);
cC = T(:,3);

 T(:,2) = cC;
 T(:,3) = cB;

 T
if(T<7)
    fprintf("LOL")
end
 
 %%  
 clc
 clear
 
Tn=[0.7 0.2;
0.3 0.8];
T= [1 0]'
pij=[];
i=(1:10);
for n=1:10
T=Tn*T;
hold on
plot(i,T);
drawnow
end
n