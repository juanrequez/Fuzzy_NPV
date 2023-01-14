function nord=ordinario(ND,tipo)

w=0.1;

a=ND(1);
b=ND(2);
c=ND(3);

switch tipo
    case 1 %numero ordinario Kahraman
        nord=(a+2*b+c)/4;
    case 2 %numero ordinario Liou y Wang
        nord=(w*(a+b)+(1-w)*(b+c))/2;
    case 3 %numero ordinario de Chiu y Park
        nord=(a+b+c)/3+w*b;
end
