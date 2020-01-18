%
%Tomasz Indeka
%Projekt MNUM - zadanie 3.15
%zadanie 1
%wyznaczanie zer funkcji metod¹ regula falsi
%

%f-funkcja
%n-iloœæ pierwiastków
%p-pocz¹tek przedzia³u
%z-koniec przedzia³u
%tol-tolerancja dok³adnoœci pierwiatków
%a-pocz¹tek przedzia³u sprawdzanego
%k,b-koniec przedzia³u sprawdzanego
%c-przybli¿ony pierwiastek
%y-wszytkie pierwiastki funkcji na przedziale
%h-ilosc iteracji przyblizania pierwiastka
%g-kolejne przyblizone pierwiastki
%j-kolejne wartoœci przybli¿onego pierwiastka

function [y,g,j] = falsi(p,z,tol)
f=@(x)(2.2*x*cos(x)-2*log(x+2)); % funkcja
z=z+1;
k=p+1;
n=0;
while k<z 
    if f(p)*f(k)<0 % sprawdzanie wszystkich przedzia³ów (co 1) czy istnieje pierwiastek
        a=p;
        b=k;
        n=n+1;
        h=1;
c=(a*f(b)-b*f(a))/(f(b)-f(a)); % poszukiwanie pierwiastka
g(h)=c;
j(h)=f(c);
while abs(f(c))>tol 
    if a*c<0
        b=c;
    else
        a=c;
    end
    c=(a*f(b)-b*f(a))/(f(b)-f(a));
    h=h+1;
    g(h)=c;
    j(h)=f(c);
end
y(n)=c;
    end
p=p+1;
k=k+1;
end
end