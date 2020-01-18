%Tomasz Indeka
%MNUM-Projekt
%zadanie 1.20, pkt 2
%WRozwi�zywanie r�wna� metod� Choleskiego - Banachowicza

%n-wielko�� macierzy pierwotnej
%A-macierz rowna� liniowych
%b-rozwi�zanie rownania Ax=b
%x-wektor rozwi�za� macierzy A
%m-mno�nik wielko�ci macierzy pierwornej
%r-ro�nica mi�dzy wynikiem obliczonym, a prawid�owym
%res-norma z ro�nicy r

%sekcja c

m=1;
while m<=9 % warunek na wielko�c macierzy zale�ny od posiadanego sprz�tu i czasu
n = 10*2^(m-1);
A = zeros(n);
i=1;
while i<=n %obliczanie macierzy A za pomoc� podanego w tre�ci zadania wzoru
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
while i<=n %obliczanie wektora b za pomoc� podanego w tre�ci zadania wzoru
    b(i,1)=5/(3*i);
    i=i+1;
end

x=Choleski(n,A,b); % wywolanie funkcji obliczaj�cej x
r=A*x-b;
res(m) = residuum(n,r); % wywolanie funkcji obliczaj�cej residuum
m=m+1;
end
plot(res)