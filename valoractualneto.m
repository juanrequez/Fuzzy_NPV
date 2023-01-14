function vpn=valoractualneto(Po,Pi,ndf,ndd)

%entradas:
%Po es el desembolso inicial 
%Pi es un vector con n desembolsos. Tiene longitud n.
%ndf es un vector difuso que contiene la tasa de inflación difusa
%ndd es un vector difuso que contiene la tasa de interes nominal

%calcular la sumatoria
n=length(Pi);
uno=[1 1 1];
sumatoria=[0 0 0];
for i=1:n
    A=potencia(suma(uno,ndf),i);
    B=potencia(suma(uno,ndd),i);
    denominador=producto(A,B);
    numerador=[Pi(i),Pi(i),Pi(i)];
    sumatoria=suma( sumatoria , division (numerador,denominador) );
end

vpn=suma([Po,Po,Po],sumatoria);