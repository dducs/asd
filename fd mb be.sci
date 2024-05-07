//energy distribution fd mb be
funcprot(0);clc;clear;clf
function f=ener(o, T, b)
    a=(o-mu(b))/(k*T)
    f=1/(exp(a)-1)
endfunction
t=-6:0.1:5
mu=[-01 -4 -5]
k=8.617*10^(-5)
style=['k-o';'k-x';'k-']
for b=1:3
    t=mu(b):0.1:10
    for i=1:length(t)
        y(i,b)=ener(t(i),(b)*20000,b)
    end
    plot(t(1:$)',y((1:$),b),style(b))
end
plot(-1*ones(y),y,'k-o');
plot(-4*ones(y),y,'k-x');
plot(-5*ones(y),y,'k-');
xtitle("BE statistics")
ylabel('$\boldsymbol{\bar n}$')
xlabel('$\boldsymbol{\epsilon(eV)}$')
a=gca()
a.x_location="origin";
a.y_location="origin"
legend("T=20000K mu=-1ev","T=40000K  mu=-4ev","T=60000K mu=-5ev")
replot([-4.5 2;-4 4.5])
