function deutsch 
%алгоритм Дойча

vec = bin2vec('01');

M_f = mf('f_b0', 1, 1);

H = hadamard(2);

vec = H*M_f*H*vec;

vec_m = measure(vec)

