function A = horner_round(p, x, b, m)
A = zeros(4,length(p));
y3 = p(1);
A(1) = p(1);
for k = 2:length(p)
    y0 = y3*x;
    y1 = round_custom(y0, b, m);
    y2 = y1 + p(k);
    y3 = round_custom(y2, b, m);
    A(:,k) = [y0; y1; y2; y3];
end