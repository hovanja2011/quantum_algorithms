function [vec_1,ind]=measure(vec)
%Измерение описано для ортонормированного базиса

p = (abs(vec)).^2;
if ~(sum(p)-1<0.0000000001)
    error('Not normalised');
end


[vect_p,ind_p]=sort(p);
vect_p=cumsum(vect_p);

r = rand;

i=1;
while r>vect_p(i)
    i=i+1;
end

ind=ind_p(i);  

vec_1=zeros(size(vec));
vec_1(ind)=1;

