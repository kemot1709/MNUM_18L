%Tomasz Indeka
%MNUM-Projekt
%zadanie 1.20, pkt 1
%Wyznaczanie dokladnosci maszynowej

%t - liczba znakow mantysy
%eps - dokladnosc maszynowa

t=0;
while 2^(-t)~=2^(-(t+1)) && (1+2^(-t))~=1
    t=t+1;
end
eps = 2^(-t+1)
