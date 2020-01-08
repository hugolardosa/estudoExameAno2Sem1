function [X] = markov_estacionario(T,X0,n)
%MARKOV_ESTACIONARIO Summary of this function goes here
%it=1;
if(X0 == 0)
    X0 = ones(size(T),1)/size(T);
end
if(n == 0)
    n =1e-5;
end
X=X0;
    while(true)
      Xold = X;
      X = T*X;
      if(max(abs(X -Xold)) < n)
        break;
      end
 %     it=it+1;
    end
end