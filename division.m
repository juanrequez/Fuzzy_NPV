function NDD=division(ND1,ND2)
% Cada número difuso triangular está compuesto de tres parámetros [a b c]
%
%la división fue obtenida de A new operation on triangular fuzzy
%number for solving fuzzy linear programming problem de Gani y Assarudeen

a1=ND1(1);
a2=ND1(2);
a3=ND1(3);

b1=ND2(1);
b2=ND2(2);
b3=ND2(3);

extremos=[a1/b1 a1/b3 a3/b1 a3/b3];
izquierda=min(extremos);
derecha=max(extremos);
centro=a2/b2;

NDD=[izquierda centro derecha];
