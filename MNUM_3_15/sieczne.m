%
%Tomasz Indeka
%Projekt MNUM - zadanie 3.15
%zadanie 1
%wyznaczanie zer funkcji metodą siecznych
%

%f-funkcja
%n-ilość pierwiastków
%p-początek przedziału
%z-koniec przedziału
%tol-tolerancja dokładności pierwiatków
%a-początek przedziału sprawdzanego
%k,b-koniec przedziału sprawdzanego
%c-przybliżony pierwiastek
%y-wszytkie pierwiastki funkcji na przedziale
%h-ilosc iteracji przyblizania pierwiastka
%g-kolejne przyblizone pierwiastki
%j-kolejne wartości przybliżonego pierwiastka

function [y,g,j] = sieczne (p,z,tol)
f=@(x)(2.2*x*cos(x)-2*log(x+2)); % funkcja
%k=z;
z=z+1;
k=p+1;
n=0;
while k<z
    if f(p)*f(k)<0 % sprawdzanie wszystkich przedziałów (co 1) czy istnieje pierwiastek
        a=p;
        b=k;
        n=n+1;
        h=1;
c=(a*f(b)-b*f(a))/(f(b)-f(a)); % poszukiwanie pierwiastka
g(h)=c;
j(h)=f(c);
while abs(f(c))>tol
    a=b;
    b=c;
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