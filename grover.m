function [] = grover(n, x0)
%   Алгоритм Гровера

X = [0 1; 1 0];
H = hadamard(n);
H1= hadamard(1);

bs0 = zeros(2^n, 1);
bs0(1) = 1;

S0 = 2 * bs0 * bs0' - eye(2^n);
G = kron(H * S0 * H, eye(2)) * m_func(n, x0);
vec = G^floor(pi / 4 * 2^(n / 2)) * kron(H, H1 * X) * kron(bs0, [1 0]');

p = 0;
for j = 1:2^n;
    prob = vec(2 * j - 1)^2 + vec(2 * j)^2;
    if prob > p
        m = j - 1;
        p = prob;
    end
end

disp(['Получен результат m = ', num2str(m), ' с вероятностью ', num2str(p)])

