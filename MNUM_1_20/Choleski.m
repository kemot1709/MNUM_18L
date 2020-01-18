
%Tomasz Indeka
%MNUM-Projekt
%zadanie 1.20
%Algorytm Choleskiego-Banachowicza

%n-wielkoœæ macierzy pierwotnej
%A-macierz rownañ liniowych
%b-rozwi¹zanie rownania Ax=b
%x-wektor rozwi¹zañ macierzy A
%L-macierz poddiagonalna rozk³adu A=LL'
%y-wektor poœredni rozwi¹zania Ly=b

function x = Choleski(n,A,b)
L = zeros(n);
i=1;
while i<=n %utworzenie macierzy L rozk³adu LL'
    j=i;
    while j<=n
        if j==i
            k=1;
            l=0;
            while k<=i-1
                l=l+L(i,k)^2;
                k=k+1;
            end
            L(i,j) = sqrt(A(j,i)-l);
        else
            k=1;
            l=0;
            while k<=i-1
                l=l+L(j,k)*L(i,k);
                k=k+1;
            end
            L(j,i) = (A(j,i)-l)/L(i,i);
        end
        j=j+1;
    end
    i=i+1;
end

y = zeros(n,1); %obliczenie wektora y ze wzoru Ly=b
j=1;
while j<=n
    i=1;
    l=0;
    while i<j
        l = l + y(i,1)*L(j,i);
        i=i+1;
    end
    y(j,1)=(b(j,1)-l)/L(j,i);
    j=j+1;
end

x = zeros(n,1); %obliczenie wektora x, bêd¹cego rozwi¹zaniem uk³adu) ze wzoru L'x=y
i=n;
while i>=1
    j=n;
    l=0;
    while i<j
        l = l + x(j,1)*L(j,i);
        j=j-1;
    end
    x(j,1)=(y(j,1)-l)/L(j,i);
    i=i-1;
end
end