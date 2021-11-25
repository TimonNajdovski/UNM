function y = hornermuf(p, x, b, m)
y = p(1);
for k = 2:length(p)
    y = roundmuf(roundmuf(y*x, b, m) + p(k), b, m);
end