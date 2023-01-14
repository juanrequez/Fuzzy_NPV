function A=evaltriangular(ND,x)

a=ND(1);
b=ND(2);
c=ND(3);

for i=1:length(x)
    if x(i)<a
        A(i)=0;
    elseif and(a<=x(i),x(i)<b)
        A(i)=(x(i)-a)/(b-a);
    elseif and(b<=x(i),x(i)<=c)
        A(i)=(x(i)-c)/(b-c);
    elseif x(i)>c
        A(i)=0;
    end
end

