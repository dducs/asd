clc
clear
clf
//for relativistic bosons
e=1.6e-19
kb=1.38e-23
h=6.626e-34
s=1
c=3*10^8
u=-1
v=1
E=0:0.001:6 //in Mev
T=[10^9 10^10]
c1=(2*s*4*3.14*v)/((h^3)*(c^3))
for j=1:length(T)
 b=1/(kb*T(j))
 for i=1:length(E)
 g(i)=c1*(E(i))^2
 n(j,i)=1/(exp((E(i)-u)*10^6*e*b)-1)
 f(j,i)=g(i)*n(j,i)
end
subplot(2,3,j*j)
plot(E',g,'linewidth',4)
ylabel('g(E)')
xlabel('Energy(MeV)')
subplot(2,3,j*j+1)
plot(E',n(j,:)','linewidth',4)
legend(string(T(j))+'K')
ylabel('n(E)')
xlabel('Energy(MeV)')
title(' relativistic bosons')
subplot(2,3,j*j+2)
plot(E',f(j,:)','linewidth',4)
legend(string(T(j))+'K')
ylabel('dN/dE')
xlabel('Energy(MeV)')
end
