clf
k = 8.617e-5;
E = 1; 
T = 273:100:100000;
beeta = 1./(k*T); 
Z = 1 + 2*exp(-beeta*E) + 2*exp(-2*beeta*E) + exp(-3*beeta*E);
Z_1 = 3 + 2*exp(-beeta*E) + 3*exp(-2*beeta*E) + exp(-3*beeta*E) + exp(-4*beeta*E);
AvgE = (2*E*exp(-beeta*E) + 4*exp(-2*beeta*E) + 3*exp(-3*beeta*E))./Z;
AvgE_1 = (2*E*exp(-beeta*E) +6*E*exp(-2*beeta*E)+3*E*exp(-3*beeta*E)+4*E*exp(-4*beeta*E))./Z_1;


subplot(1,3,1)
plot(T,AvgE,"--");
ylabel("Average Energy")
plot(T,AvgE_1)
xlabel("Temperature")
legend("Fermion","Boson")

C_v = -(1./(k.*T.*T)).*(Z.*(-2*E^2*exp(-beeta*E)-8*E^2*exp(-2*beeta*E)-9*E^2*exp(-3*beeta*E))-(2*E*exp(-beeta*E)+4*E*exp(-2*beeta*E)+3*E*exp(-3*beeta*E)).*(-2*E*exp(-beeta*E)-4*E*exp(-2*beeta*E)-3*E*exp(-3*beeta*E)))./(Z.*Z);

C_v_b = -(1./(k.*T.*T)).*(Z_1.*(-2*E^2*exp(-beeta*E)-9*E^2*exp(-3*beeta*E)-16*E^2*exp(-4*beeta*E))-(2*E*exp(-beeta*E)+6*E*exp(-2*beeta*E)+3*E*exp(-3*beeta*E)+4*E*exp(-4*beeta*E)))./(Z_1.*Z_1);

subplot(1,3,2)
plot(T,C_v);
ylabel("Specific Heat")
plot(T,C_v_b,"--b");
xlabel("Temperature")
legend("Fermions","Bosons")


S_f=k.*log(Z)+AvgE./T;
S_b=k.*log(Z_1)+AvgE_1./T;

subplot(1,3,3)
ylabel("Entropy")
xlabel("Tempertaure")
plot(T,S_f./k,"--")

plot(T,S_b./k)
legend("Fermions","Bosons")
