function y = horner(a, x)
y = a(1)*ones(1, length(x));
for k = 2:length(a)
    y = y.*x+a(k);
end