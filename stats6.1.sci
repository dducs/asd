clc;clf(0);clear
E=5
k=8.617e-5;
beeta=1e-30:0.05:2
Z=1+exp(-beeta*E)
P0=1./Z
P1=exp(-beeta*E)./Z
Energy=E*P1
Cv=E^2*beeta^2.*P1./Z;
S=log(Z)+Energy.*beeta

subplot(2,2,1)
plot(beeta',P0','k-d','linewidth',2)
plot(beeta',P1','k-o','linewidth',2)
xlabel('$\beta (eV^{-1})$','fontsize',5)
ylabel('Probability','fontsize',5)
title("$\text{Probability Distribution for Two State Non Degenerate System }(\epsilon=5 eV)$",'fontsize',4)
legend("$P_0$","$P_1$")

subplot(2,2,2);
plot(beeta',Energy','k-d','linewidth',2)
xlabel('$\beta (eV^{-1})$','fontsize',5)
ylabel('$\bar E (eV) $','fontsize',5)
title("$\text{Average Energy for Two State Non Degenerate System }(\epsilon=5 eV)$",'fontsize',4)

subplot(2,2,3)
plot(beeta',Cv','k-d','linewidth',2)
xlabel('$\beta (eV^{-1})$','fontsize',5)
ylabel('$\frac{\bar C_v}{K_b}$','fontsize',5)
title("$\text{Specific Heat for Two State Non Degenerate System }(\epsilon=5 eV)$",'fontsize',4)

subplot(2,2,4)
plot(beeta',S','k-d','linewidth',2)
xlabel('$\beta (eV^{-1})$','fontsize',5)
ylabel('$\frac{\bar S}{K_b}$','fontsize',5)
title("$\text{Average Specific Heat for Two State Non Degenerate System }(\epsilon=5 eV)$",'fontsize',4)
