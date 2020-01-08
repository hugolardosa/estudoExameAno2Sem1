%% ex1
T = [0.9 0.5 0.5;
    0.09 0.4 0.4;
    0.01 0.1 0.1];

v=[0 0 1]';

V4 = T^4 * v

index= 0;
for i = 1:200
    P1(i) = T()^i * v;
    P2(i) = T()^i * v;
    P3(i) = T()^i * v;
    if(i>1)
        if(P1(i) - P1(i+1) < 0.001)
            index = i+1;
            break;
        end

        if(P2(i) - P2(i+1) < 0.001)
            index = i+1;
            break;
        end

        if(P3(i) - P3(i+1) < 0.001)
            index = i+1;
            break;
        end
    end
end
P3(index) / (P1(index)+P2(index)+P3(index))
(P2(index)+P3(index)) /  (P1(index)+P2(index)+P3(index))
%% alinea 2
clc;
clear;

H= [0 1/2 1/3 1/4   0;
    1/2 0 0 1/4 1/2;
    1/2 1/2 1/3 1/4 0; 
    0   0   0   0   1/2
    0    0  1/3  1/4 0];
sum(H)
n = ones(5)*1/5

A = 0.8 * H + (1 - 0.8)*n

V0 = [1/5 1/5 1/5 1/5 1/5]'

V10 = A^10 * V0

%% alinea 3
clc
clear
T = [ 0.7  0.2 0   0   0 0;
      0.2  0   0.3 0   0 0;
      0    0.6 0.3 0   0 0;
      0.1  0.2 0.3 0.1 0 0;
      0    0   0.1 0.5 1 0;
      0    0   0   0.4 0 1];
%sum(T)
  V0 = [1 0 0 0 0 0]';
  V10 = T^10 * V0;
  V10(3)
  V15 = T^15 * V0;
  V15(4)
  
  Q = T(1:4,1:4);
  T = inv(eye(4) - Q);
  s = sum(T);
  s(3)