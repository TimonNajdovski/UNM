function [c1, n] = regula_falsi(a, b, f, eps)
    c0 = b;
    c1 = a;
    n = 0;
    while abs(c0-c1) > eps
        c0 = c1;
        c1 = (a*f(b) - b*f(a)) / (f(b) - f(a));
        n = n+1;
        if sign(f(b)) == sign(f(a))
            a = c1;
        else
            b = c1;
        end
    end