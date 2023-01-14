x=0:0.1:20;
nd1=[7.5,10,12.5];
nd2=[5 10 15];
nd3=[2.5 10,17.5];
nd4=[0 10 20];

A1=evaltriangular(nd1,x);
A2=evaltriangular(nd2,x);
A3=evaltriangular(nd3,x);
A4=evaltriangular(nd4,x);

figure
subplot(2,2,1)
plot(x,A1,'k')
ylabel('pertenencia')
text(12,0.9,'cercano a')
subplot(2,2,2)
plot(x,A2,'k')
text(12,0.9,'alrededor de')
subplot(2,2,3)
plot(x,A3,'k')
ylabel('pertenencia')
xlabel('rango')
text(12,0.9,'rango medio')
subplot(2,2,4)
plot(x,A4,'k')
xlabel('rango')
text(12,0.9,'rango amplio')

