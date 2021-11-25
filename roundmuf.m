function y = roundmuf(v, base, prec)
y = round(v*base^(prec - 1 - floor(abs(log(v)/log(base)))))/(base^(prec - 1 - floor(abs(log(v)/log(base)))));