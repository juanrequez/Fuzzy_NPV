function NDP=potencia(ND1,exponente)
% Cada número difuso triangular está compuesto de tres parámetros [a b c]

ND=ND1;

for i=2:exponente
    ND=producto(ND1,ND);
end

NDP=ND;