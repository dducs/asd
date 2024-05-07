clc
clear
clf
//for non relativistic fermions
e=1.6e-19
kb=1.38e-23
h=6.626e-34
s=0.5
c=3*10^8
u=1
v=1
m=9.1e-31
E=0:0.001:2
T=[100 1000]
c1=(2*s+1)*(2*3.14*v*(2*m)^1.5)/(h^3)
for j=1:length(T)
 b=1/(kb*T(j))
 for i=1:length(E)
 g(i)=c1*(E(i))^0.5
 n(j,i)=1/(exp((E(i)-u)*e*b)+1)
 f(j,i)=g(i)*n(j,i)
end
end
subplot(1,3,1)
plot(E',g)
ylabel('g(E)')
xlabel('Energy(eV)')
subplot(1,3,2)
plot(E',n)
legend(string(T)+'K')
ylabel('n(E)')
xlabel('Energy(eV)')
title('non relativistic fermions')
subplot(1,3,3)
plot(E',f)
legend(string(T)+'K')
ylabel('dN/dE')
xlabel('Energy(eV)')
