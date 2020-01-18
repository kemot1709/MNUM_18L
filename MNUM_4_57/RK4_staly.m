%
%Tomasz Indeka
%Projekt MNUM - zadanie 4.57
%obliczanie przebiegu trajektorii ruchu
%

function [x,x1,x2] = RK4_staly (q1,q2,h)

% x - wektor argumentów
% x1,x2 - wektory wartoœci funkcji dla argumentu x
% q1,q2 - wartoœci pocz¹tkowe
% h - krok metody
% kn1,kn2 - pochodne w kolejnych punktach przedzia³u
% n - numer aktualnego kroku
% p - aktualna wartoœæ dla której obliczamy wektory wartoœci

n=1;
p=0;
x(n)=0;
x1(n)=q1;
x2(n)=q2;
while p<=20
k11=x2(n)+x1(n)*(0.2-x1(n)^2-x2(n)^2);
k12=-x1(n)+x2(n)*(0.2-x1(n)^2-x2(n)^2);
k21=(x2(n)+h*k12/2)+(x1(n)+h*k11/2)*(0.2-(x1(n)+h*k11/2)^2-(x2(n)+h*k12/2)^2);
k22=-(x1(n)+h*k11/2)+(x2(n)+h*k12/2)*(0.2-(x1(n)+h*k11/2)^2-(x2(n)+h*k12/2)^2);
k31=(x2(n)+h*k22/2)+(x1(n)+h*k21/2)*(0.2-(x1(n)+h*k21/2)^2-(x2(n)+h*k22/2)^2);
k32=-(x1(n)+h*k21/2)+(x2(n)+h*k22/2)*(0.2-(x1(n)+h*k21/2)^2-(x2(n)+h*k22/2)^2);
k41=(x2(n)+h*k32)+(x1(n)+h*k31)*(0.2-(x1(n)+h*k31)^2-(x2(n)+h*k32)^2);
k42=-(x1(n)+h*k32)+(x2(n)+h*k31)*(0.2-(x1(n)+h*k31)^2-(x2(n)+h*k32)^2);
n=n+1;
p=p+h;
x(n)=p;
x1(n)=x1(n-1)+h*(k11+2*k21+2*k31+k41)/6;
x2(n)=x2(n-1)+h*(k12+2*k22+2*k32+k42)/6;
end
plot(x,x1,x,x2)
end