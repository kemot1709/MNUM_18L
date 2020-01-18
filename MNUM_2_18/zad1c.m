%
%Tomasz Indeka
%MNUM-Projekt 2.18
%zadanie 1
%
%Oblicznie wektorów w³asnych macierzy nieosobliwych metod¹ QR
%macierz dowolna z przesuniêciami
%

% A-macierz wejœciowa
% n-wymiar macierzy
% s-wartoœæ œredniej liczby iteracji 
% v-wektor wartoœci w³asnych macierzy A 

function s = zad1c(n)
k=1;
suma=0;
while k<=30
    A = rand(n);    
    [i,v]=qr_prz (A,n);
    suma = suma+i;
    k=k+1; 
end
s=suma/30;
end