%
%Tomasz Indeka
%Projekt MNUM - zadanie 3.15
%zadanie 2
%wyznaczanie zer funkcji wielomianowej metod¹ Mullera
%

%w-funkcja
%n-iloœæ pierwiastków
%tol-tolerancja dok³adnoœci pierwiatków
%y-wszytkie pierwiastki funkcji na przedziale
%x-punkty do aproksymacji i szukania pierwiastka
%z,zc,zd-przewidywany pierwiastek

function y = muller(w,tol)
n = size(w)-1;
n=n(2);
while n>0 % szukanie n pierwiastków wielomianu w
zd=1;
x=[1 2 3]; 
while zd>tol % poszukiwanie pojedynczego pierwiastka
z=x-x(3);
c=polyval(w,x(3));
a=((polyval(w,x(2))-polyval(w,x(3)))/z(2)-(polyval(w,x(1))-polyval(w,x(3)))/z(1)/(z(2)-z(1)));
b=(polyval(w,x(1))-polyval(w,x(3))-a*z(1)*z(1))/z(1); 
za=(-2*c)/(b+sqrt(b^2-4*a*c));
zb=(-2*c)/(b-sqrt(b^2-4*a*c));
zd=min(abs(za),abs(zb)); % wybór przybli¿enia pierwiastka bli¿ej zera
if abs(za)>abs(zb)
zc=x(3)+zb;
else
zc=x(3)+za;
end
if abs(x(1)-zc)>abs(x(2)-zc) && abs(x(1)-zc)>abs(x(3)-zc) % eliminacja pierwiastka najbardziej oddalonego od aktualnie obliczonego
x(1)=x(3);
x(3)=zc;
elseif abs(x(2)-zc)>abs(x(3)-zc)
x(2)=x(3);
x(3)=zc;
else
x(3)=zc;
end
end
y(n)=zc; % wypisanie pierwiastka
[w,r]=deconv(w,[1 -zc]); %deflacja czynnikiem liniowym
n=n-1;
end
end