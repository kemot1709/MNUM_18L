%
%Tomasz Indeka
%MNUM-Projekt 2.18
%zadanie 1
%
%Oblicznie wektorów w³asnych macierzy nieosobliwych metod¹ QR
%macierz symetryczna bez przesuniêæ
%

% A-macierz wejœciowa
% n-wymiar macierzy
% s-wartoœæ œredniej liczby iteracji 
% v-wektor wartoœci w³asnych macierzy A 

function s = zad1a(n)
k=1;
suma=0;
while k<=30
    A = rand(n);
    A = A + A';
    [i,v]=qr_b_prz (A,n);
    suma = suma+i;
    k=k+1; 
end
s=suma/30;
end

