function [matrix] = krozna(v)
n = length(v);
matrix = zeros(n, n);
for k = n:-1:1
    matrix(:,n-k+1) = [v(k+1:end)' ; v(1:k)'];
end