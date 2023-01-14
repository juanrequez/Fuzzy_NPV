function vpn=valorpresenteneto(Po,Pi,ndr)

%entradas:
%Po es el desembolso inicial 
%Pi es un vector con n desembolsos. Tiene longitud n.
%ndr es un vector difuso que contiene la tasa de inflación difusa

%calcular la sumatoria
n=length(Pi);
uno=[1 1 1];
sumatoria=[0 0 0];
for i=1:n
    sumatoria=suma(sumatoria,division([Pi(i),Pi(i),Pi(i)],potencia(suma(uno,ndr),i)));
end

vpn=suma([Po,Po,Po],sumatoria);

