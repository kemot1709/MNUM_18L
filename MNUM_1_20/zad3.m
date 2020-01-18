%Tomasz Indeka
%MNUM-Projekt
%zadanie 1.20, pkt 2
%WRozwi¹zywanie równañ metod¹ Gaussa-Seidela

%i-iloœæ powtorzeñ iteracyjnego poprawiania rozwi¹zania
%n-wielkoœæ macierzy pierwotnej
%A-macierz rownañ liniowych
%b-rozwi¹zanie rownania Ax=b
%x-wektor rozwi¹zañ macierzy A
%D-macierz diagonalna macierzy A
%U-macierz naddiagonalna macierzy A
%L-macierz poddiagonalna macierzy A
%w-wektor Ux-b
%m-mno¿nik wielkoœci macierzy pierwornej
%e-bl¹d przybli¿enia
  
m=1;
while m<=1 % warunek na wielkoœc macierzy zale¿ny od posiadanego sprzêtu i czasu
n = 80;
A = zeros(n);
k=1;
while k<=n %obliczanie macierzy A za pomoc¹ podanego w treœci zadania wzoru
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

b = zeros(n,1); %obliczanie wektora b za pomoc¹ podanego w treœci zadania wzoru
k=1;
while k<=n
    b(k,1)=2.5+0.6*k;
    k=k+1;
end

x = Gauss_Seidel(n,A,b); % wywolanie funkcji obliczaj¹cej x
m=m+1;
end