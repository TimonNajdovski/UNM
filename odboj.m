function [x, r] = odboj(a, v)
p1 = [v(1)^2+v(2)^2 2*(a(1)*v(1)+a(2)*v(2)) a(1)^2+a(2)^2-9];
p2 = [v(1)^2+v(2)^2 2*(a(1)*v(1)+a(2)*v(2)) a(1)^2+a(2)^2-16];
cand = [roots(p1) ; roots(p2)];
cand2 = [];
for k = 1:4
    if isreal(cand(k))
        cand2 = [cand2 cand(k)];
    end
end
cand2 = cand2(cand2>0);
t = min(cand2);
x = (a + v*t);
r = norm(a+v*t);