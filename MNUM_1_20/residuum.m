%Tomasz Indeka
%MNUM-Projekt
%zadanie 1.20
%obliczanie residuum z rozwi�zania

%n-wielkosc macierzy pierwotnej
%r-ro�nica mi�dzy wynikiem obliczonym, a prawid�owym
%res-norma z ro�nicy r

function res = residuum (n,r)
i=1;
res=0;
while i<=n %obliczanie normy euklidesowej z wektora r
    res = res + r(i)^2;
    i = i+1;
end
res= sqrt(res);
end