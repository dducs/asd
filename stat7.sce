clc;clear;clf();
u1=0 //for bosons
u2=2 //for fermions
T1=300
T2=3000
T3=100
T4=1000
kb=8.617e-5
E1=1e-30:0.01:1
E2=0:0.01:5
lambda=1

a1=(E1-u1)/(kb*T1)
a2=(E1-u1)/(kb*T2)

a3=(E2-u2)/(kb*T3)
a4=(E2-u2)/(kb*T4)

Nb1=1./(exp(a1)-1)
Nb2=1./(exp(a2)-1)
Nf1=1./(exp(a3)+1)
Nf2=1./(exp(a4)+1)

g1=lambda*sqrt(E1)
g2=lambda*sqrt(E2)

subplot(1,2,1)
plot(E1',[g1' Nb1' Nb2'])
replot([0 1;0 2])
legend("Density of States", "Average Occupation Number (300 K)","Average Occupation Number (3000 K)")
title("$\text{Plot of \bar n versus \epsilon for Bosons in 3D (Non-Relativistic)}$",'fontsize',4)

subplot(1,2,2)
plot(E2',[g2' Nf1' Nf2'])
replot([0 5;0 1.5])
legend("Density of States", "Average Occupation Number (100 K)","Average Occupation Number (1000 K)")
title("$\text{Plot of \bar n versus \epsilon for Fermions in 3D (Non-Relativistic)}$",'fontsize',4)
