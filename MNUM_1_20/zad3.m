%Tomasz Indeka
%MNUM-Projekt
%zadanie 1.20, pkt 2
%WRozwi�zywanie r�wna� metod� Gaussa-Seidela

%i-ilo�� powtorze� iteracyjnego poprawiania rozwi�zania
%n-wielko�� macierzy pierwotnej
%A-macierz rowna� liniowych
%b-rozwi�zanie rownania Ax=b
%x-wektor rozwi�za� macierzy A
%D-macierz diagonalna macierzy A
%U-macierz naddiagonalna macierzy A
%L-macierz poddiagonalna macierzy A
%w-wektor Ux-b
%m-mno�nik wielko�ci macierzy pierwornej
%e-bl�d przybli�enia
  
m=1;
while m<=1 % warunek na wielko�c macierzy zale�ny od posiadanego sprz�tu i czasu
n = 80;
A = zeros(n);
k=1;
while k<=n %obliczanie macierzy A za pomoc� podanego w tre�ci zadania wzoru
    j=1;
    while j<=n
        if j==k
            A(j,k)=3*n*n-k;
        else
            A(j,k)=k+j+1;
        end
        j=j+1;
    end
    k=k+1;
end

b = zeros(n,1); %obliczanie wektora b za pomoc� podanego w tre�ci zadania wzoru
k=1;
while k<=n
    b(k,1)=2.5+0.6*k;
    k=k+1;
end

x = Gauss_Seidel(n,A,b); % wywolanie funkcji obliczaj�cej x
m=m+1;
end