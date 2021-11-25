function k = poly_curvature(p1, p2, t)
p1_prime = polyval(polyder(p1), t);
p2_prime = polyval(polyder(p2), t);
p1_2prime = polyval(polyder(polyder(p1)), t);
p2_2prime = polyval(polyder(polyder(p2)), t);

matrika = [p1_prime p2_prime; p1_2prime p2_2prime];
vektor = [p1_prime p2_prime];

k = abs(det(matrika))/norm(vektor)^3;



