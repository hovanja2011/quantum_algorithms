function M_f = mf(f,m,n)
%Создает матрицу функции
% с m-битным входоми n-битным выходом y=f(x,n)

ins=[];
outs=[];

for i=0:2^m-1
    
    x=dec2bin(i,m);

    for j=0:2^n-1
        y=dec2bin(j,n);
        
        in = [x y];
        
        out=[x dec2bin( bitxor(j, feval(f,i,n)) ,n) ];
        
        ins=[ins;in];
        outs=[outs;out];
    end
end

M_f = bins2mat(ins, outs);

