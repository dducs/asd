clc
clear
clf
//for non relativistic bosons
e=1.6e-19
kb=1.38e-23
h=6.626e-34
s=1
c=3*10^8
u=-1
v=1
m=4*1.66e-27
E=0:0.001:0.5
T=[100 1000]
c1=(2*s+1)*(2*3.14*v*(2*m)^1.5)/(h^3)
for j=1:length(T)
 b=1/(kb*T(j))
 for i=1:length(E)
 g(i)=c1*(E(i))^0.5
 n(j,i)=1/(exp((E(i)-u)*e*b)-1)
 f(j,i)=g(i)*n(j,i)
end
subplot(2,3,j*j)
plot(E',g,'linewidth',4)
ylabel('g(E)')
xlabel('Energy(eV)')
subplot(2,3,j*j+1)
plot(E',n(j,:)','linewidth',4)
legend(string(T(j))+'K')
ylabel('n(E)')
xlabel('Energy(eV)')
title('non relativistic bosons')
subplot(2,3,j*j+2)
plot(E',f(j,:)','linewidth',4)
legend(string(T(j))+'K')
ylabel('dN/dE')
xlabel('Energy(eV)')
end
