function NDP=potencia(ND1,exponente)
% Cada n�mero difuso triangular est� compuesto de tres par�metros [a b c]

ND=ND1;

for i=2:exponente
    ND=producto(ND1,ND);
end

NDP=ND;