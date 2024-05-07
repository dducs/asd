clc;clear;clf();
mat=input("Enter the name of material : ")
td=input("Enter the value of Debye temperature : ")
te=input("Enter the value of Einstein temperature : ")
Cvdp=3;
tvec=1:1:td
for t =1:td
        Cve(t)=3*((te/t)^2)*exp(te/t)/(exp(te/t)-1)^2;
        I=integrate('(exp(x)*x^4)/(exp(x)-1)^2', 'x', 0, td/t,1e-4);
        Cvdb(t)=9*I*(t/td)^3;
        
end
plot(tvec',[Cve Cvdb Cvdp*ones(Cve)],'linewidth',2)
title("Plot of Specific Heat of "+mat,'fontsize',6)
xlabel("Temperature (K)",'fontsize',5)
ylabel("$\frac{C_v}{NK}$",'fontsize',5)
L=legend("Einstein''s law","Debye''s law","Dulong-Petit law",4)
L.font_size=4
replot([%nan %nan;%nan 4])


