%
%Tomasz Indeka
%MNUM-Projekt 2.18
%zadanie 1
%
%Oblicznie wektor�w w�asnych macierzy nieosobliwych metod� QR
%macierz symetryczna z przesuni�ciami
%

% A-macierz wej�ciowa
% n-wymiar macierzy
% s-warto�� �redniej liczby iteracji 
% v-wektor warto�ci w�asnych macierzy A 

function s = zad1b(n)
k=1;
suma=0;
while k<=1
    A = rand(n);
    A = A + A';
    
    [i,v]=qr_prz (A,n);
    suma = suma+i;
    k=k+1; 
end
s=suma/30;
end