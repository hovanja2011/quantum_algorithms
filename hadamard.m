function H = hadamard(n)
%n-мерная матрица Адамара

if n==1
    H = [ 1 1; 1 -1]/sqrt(2);
else
    h = hadamard(1);
    H=1;
    for i=1:n
        H=kron(H,h);    
    end
end

