function vf=valorfuturo(P,ndr,n)

%entradas:
%P valor presente en el momento inicial 
%ndr es un numero difuso (vector) que contiene la tasa de inflación difusa
%n es el número de períodos

uno=[1 1 1];
F=P*potencia(suma(uno,ndr),n);

vf=F;