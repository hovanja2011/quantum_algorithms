function [O] = m_func(n, x0)

one = eye(2^n);
one(x0 + 1, x0 + 1) = -1;

O = kron(one, eye(2));

