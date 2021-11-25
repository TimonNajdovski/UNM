function [c, n] = bisekcija(a, b, f, eps)
c = nan;
n = 0;
if sign(f(a)) == sign(f(b))
else
    e = b - a;
    while e > eps
        e = e/2;
        c = a + e;
        if sign(f(a)) == sign(f(c))
            a = c;
        end
        n = n + 1;
    end
end