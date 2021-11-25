function [values] = odboji(n, a, v)
values = zeros(3, n);
for k = 1:n
    [x, r] = odboj(a, v);
    values(:,k) = [x ; r];
    a = x;
    if r>3.5
        ang = 2*acos((x' * v)/(norm(x)*norm(v)));
        rotm = [cos(ang), sin(ang); -sin(ang), cos(ang)];
        v = -(rotm * v);
    else
        ang = -2*acos((x' * v)/(norm(x)*norm(v)));
        rotm = [cos(ang), sin(ang); -sin(ang), cos(ang)];
        v = -(rotm * v);
    end
end
