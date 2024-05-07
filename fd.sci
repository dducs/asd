//energy distribution fd mb be
funcprot(0);clc;clear;
function f=ener(o, T)
    a=(o-mu)/(k*T)
    f=1/(exp(a)+1)
endfunction
t=0:0.1:10
mu=5
k=8.617*10^(-5)
style=['k-o';'k-x';'k-']
for b=1:3
    for i=1:length(t)
        y(i,b)=ener(t(i),(b-1)*10000+10)
    end
    plot(t(1:$)',y((1:$),b),style(b))
end
xgrid()
xtitle("FD statistics for occupancyof electron")
ylabel('$\boldsymbol{\bar n}\$')
xlabel('$\boldsymbol{\epsilon}$')
a=gca()
a.x_location="origin";
a.y_location="origin"
legend("T=10K","T=10000K","T=20000K")
replot([-1 10;0 2])
