function [x3, n] = ridders_method(x0, x2, f, eps)
n = 0;

while abs(x0 - x2) > eps
    n = n + 1;
    x1 = (x0 + x2)/2;
    x3 = x1 + (x1 - x0)*((sign(f(x0))*f(x1))/sqrt(f(x1)^2 - f(x0)*f(x2)));
    
    left = sign(f(x0));
    half = sign(f(x1));
    new = sign(f(x3));

    if new ~= half
        x0 = x1;
        x2 = x3;
    elseif left == new
        x0 = x3;
    else
        x2 = x3;
    end
end