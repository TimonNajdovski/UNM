function y = round_custom(x, b, m)
e = 0;
y = 0;
while abs(x) < 1/b
    x = x*b;
    e = e - 1;
end
while abs(x) > 1
    x = x/b;
    e = e + 1;
end
for k = 1:m
    x0 = floor(b*x);
    y = y + x0*b^-k;
    x = b*x - x0;
end
y = y*b^e;