function a = aproksymacja(x,y,h,m)

% x-wektor danych x
% y-wektor danych y
% a-wektor aproksymacji w bazie wielomianów
% G-macierz pomocnicza
% q-wektor pomocniczy
% xa-wektor x funkcji aproksymuj¹cej
% ya-wektor y funkcji aproksymuj¹cej
% h-rozmiar wektorów danych
% cz-norma Czebyszewa (maksimum) obliczonej funkcji
% e-norma euklidesowa obliczonej funkcji
% m-maksymalny stopieñ wielomianu przybli¿aj¹cego

n=1;

while n<=m % obliczanie wektora aproksymacji dla kolejnych h-1 maksymalnych potêg x
    k=1;
    while k<=n % obliczenie macierzy pomocniczej G
        i=1;
        while i<=n
            j=1;
            G(i,k) = 0;
            while j<=h
                G(i,k) = G(i,k) + x(j)^(i+k-2);
                j=j+1;
            end
            i=i+1;
        end
        q(k)=0;
        j=1;
        while j<=h % obliczenie wektora pomocniczego q
                q(k)=q(k)+y(j)*x(j)^(k-1);
                j=j+1;
        end
            k=k+1;
    end
    a=q*G^(-1);
    n=n+1;

end
end