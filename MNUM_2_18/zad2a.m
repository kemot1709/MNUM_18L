%
%Tomasz Indeka
%MNUM-Projekt 2.18
%zadanie 2
%
%Metoda najmniejszych kwadratów przy wyznaczaniu funkcji
%układ równań normalnych
%

% x-wektor danych x
% y-wektor danych y
% a-wektor aproksymacji w bazie wielomianów
% h-rozmiar wektorów danych
% m-maksymalny stopień wielomianu przybliżającego


function a = zad2a()

x = [150 200 250 264];
y = [-25 -30 -42 -49];
h=4;
m=4;

a = aproksymacja(x,y,h,m);

    xa = [150:5:265];
    i=1;
    while i<=(115/5)+1 % obliczanie wartości funkcji aproksymującej do narysowania wykresu
        j=1;
        ya(i)=0;
        while j<=m
            ya(i)= ya(i) + a(j)*xa(i)^(j-1);
            j=j+1;
        end
        i=i+1;
    end
    plot (x,y,'o',xa,ya);
    
    
end