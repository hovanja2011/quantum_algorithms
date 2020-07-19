function m = bins2mat(in_bins, out_bins)
%по набору бинарных значений функции восстанавливает матрицу

n=size(in_bins,2);

m = zeros(2^n-1);

for i=1:size(in_bins,1)

    in=bin2dec(in_bins(i,:));
    out=bin2dec(out_bins(i,:));
    
    m(out+1,in+1)=1;    
end

