function vf=valorfuturo(P,ndr,n)

%entradas:
%P valor presente en el momento inicial 
%ndr es un numero difuso (vector) que contiene la tasa de inflaci�n difusa
%n es el n�mero de per�odos

uno=[1 1 1];
F=P*potencia(suma(uno,ndr),n);

vf=F;