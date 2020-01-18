%Tomasz Indeka
%MNUM-Projekt
%zadanie 1.20, pkt 2
%WRozwi¹zywanie równañ metod¹ Choleskiego - Banachowicza

%n-wielkoœæ macierzy pierwotnej
%A-macierz rownañ liniowych
%b-rozwi¹zanie rownania Ax=b
%x-wektor rozwi¹zañ macierzy A
%m-mno¿nik wielkoœci macierzy pierwornej
%r-ro¿nica miêdzy wynikiem obliczonym, a prawid³owym
%res-norma z ro¿nicy r

%sekcja c

m=1;
while m<=9 % warunek na wielkoœc macierzy zale¿ny od posiadanego sprzêtu i czasu
n = 10*2^(m-1);
A = zeros(n);
i=1;
while i<=n %obliczanie macierzy A za pomoc¹ podanego w treœci zadania wzoru
    j=1;
    while j<=n
        if j==i
            A(j,i)=0.1*n+0.3*i;
        else
            A(j,i)=1/(6*(i+j+1));
        end
        j=j+1;
    end
    i=i+1;
end

b = zeros(n,1);
i=1;
while i<=n %obliczanie wektora b za pomoc¹ podanego w treœci zadania wzoru
    b(i,1)=5/(3*i);
    i=i+1;
end

x=Choleski(n,A,b); % wywolanie funkcji obliczaj¹cej x
r=A*x-b;
res(m) = residuum(n,r); % wywolanie funkcji obliczaj¹cej residuum
m=m+1;
end
plot(res)