%Tomasz Indeka
%MNUM-Projekt
%zadanie 1.20, pkt 2
%Algorytm Gaussa-Seidela

%i-iloœæ powtorzeñ iteracyjnego poprawiania rozwi¹zania
%n-wielkoœæ macierzy pierwotnej
%A-macierz rownañ liniowych
%b-rozwi¹zanie rownania Ax=b
%x-wektor rozwi¹zañ macierzy A
%D-macierz diagonalna macierzy A
%U-macierz naddiagonalna macierzy A
%L-macierz poddiagonalna macierzy A
%w-wektor Ux-b
%e-bl¹d przybli¿enia

function x = Gauss_Seidel(n,A,b)

D = zeros(n);
L = zeros(n);
U = zeros(n);
k=1;
while k<=n %obliczanie macierzy D, L i U na podstawie macierzy A
    j=1;
    while j<=n
        if j==k
            D(j,k)=A(j,k);
        elseif j>k
            L(j,k)=A(j,k);
        else
            U(j,k)=A(j,k);
        end
        j=j+1;
    end
    k=k+1;
end

i=0;
e=0;
x = zeros(n,1); %zalo¿enie ¿e rozwi¹zanie zerowe jest rowne wektorowi zerowemu
while (i<1000  && e>2^(-50)) || i<5 % obliczanie kolejnych przybli¿eñ rozwi¹zania
    xpom=x; % chwilowe zapamiêtanie wektora rozwi¹zañ do poŸniejszych porownañ
    w=U*x - b;
    j=1;
    while j<=n
        k=1;
        l=-w(j);
        while k<=j
            l=l-L(j,k)*x(k);
            k=k+1;
        end
        x(j)=l/D(j,j);
    j=j+1;
    end
    xpom=xpom-x; %obliczenie ro¿nicy pomiêdzy rozwi¹zaniami
    k=1;
    e=0;
    while k<=n % obliczenie blêdu przybli¿enia
        e = e + xpom(k)^2;
        k = k+1;
    end
    e = sqrt(e);
    i=i+1;  
end
n
i
e
end