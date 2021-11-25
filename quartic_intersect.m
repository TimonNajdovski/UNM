function points = quartic_intersect(f, g, R, a, b)
%Izračuna presek parametrično podane polinomske krivulje in kroga z
%radijem R s parametri z intervala [a,b].

p = conv(f, f) + conv(g, g) + [zeros(1, 8) -R^2];
cand1 = roots(p);
cand2 = [];

for k = 1:8
    if isreal(cand1(k))
        cand2 = [cand2 cand1(k)];
    end
end
cand2 = cand2(cand2 > a);
cand2 = cand2(cand2 < b);

points = [cand2; polyval(f, cand2); polyval(g, cand2)];