function vec = bin2vec(bin)
%преобразует строку-бинарное число в вектор

dec=bin2dec(bin);
n=length(bin);
vec=zeros(2^n,1);
vec(dec+1)=1; 

