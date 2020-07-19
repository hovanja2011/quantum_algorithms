function deutsch_jozsa(f)
%алгорит Дойча-Джоза

vec = bin2vec('001');

M_f = mf(f, 2, 1);

H_3 = hadamard(3);
H_2 = hadamard(2);
I   = eye(2);

vec = (kron(H_2, I))*M_f*H_3*vec;

vec_m = measure(vec)










