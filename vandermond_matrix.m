function A = vandermond_matrix(F, X)
n = length(X);
A = zeros(n);
for k = 1:n
    x = X(k);
    for l = 1:n
        f = cell2mat(F(l));
        A(k, l) = f(x);
    end
end