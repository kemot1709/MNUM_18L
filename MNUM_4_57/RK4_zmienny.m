%
%Tomasz Indeka
%Projekt MNUM - zadanie 4.57
%obliczanie przebiegu trajektorii ruchu
%

function [x,x1,x2,err1,err2] = RK4_zmienny (q1,q2,h)

% x - wektor argumentów
% x1,x2 - wektory wartoœci funkcji dla argumentu x
% q1,q2 - wartoœci pocz¹tkowe
% h - krok metody
% kn1,kn2 - pochodne w kolejnych punktach przedzia³u
% n - numer aktualnego kroku
% p - aktualna wartoœæ dla której obliczamy wektory wartoœci
% err1,err2 - wartoœci b³êdów pojedynczego kroku
% x11,x21 - wartoœci funkcji dla kroku h/2

n=1;
p=0;
j=1;
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

x11(j)=x1(n);
x21(j)=x2(n);

n=n+1;
p=p+h;
x(n)=p;
x1(n)=x1(n-1)+h*(k11+2*k21+2*k31+k41)/6;
x2(n)=x2(n-1)+h*(k12+2*k22+2*k32+k42)/6;


for i=1:2
    k11=x21(j)+x11(j)*(0.2-x11(j)^2-x21(j)^2);
    k12=-x11(j)+x21(j)*(0.2-x11(j)^2-x21(j)^2);
    k21=(x21(j)+h*k12/4)+(x11(j)+h*k11/4)*(0.2-(x11(j)+h*k11/4)^2-(x21(j)+h*k12/4)^2);
    k22=-(x11(j)+h*k11/4)+(x21(j)+h*k12/4)*(0.2-(x11(j)+h*k11/4)^2-(x21(j)+h*k12/4)^2);
    k31=(x21(j)+h*k22/4)+(x11(j)+h*k21/4)*(0.2-(x11(j)+h*k21/4)^2-(x21(j)+h*k22/4)^2);
    k32=-(x11(j)+h*k21/4)+(x21(j)+h*k22/4)*(0.2-(x11(j)+h*k21/4)^2-(x21(j)+h*k22/4)^2);
    k41=(x21(j)+h*k32/2)+(x11(j)+h*k31/2)*(0.2-(x11(j)+h*k31/4)^2-(x21(j)+h*k32/4)^2);
    k42=-(x11(j)+h*k32/2)+(x21(j)+h*k31/2)*(0.2-(x11(j)+h*k31/4)^2-(x21(j)+h*k32/4)^2);
    x11(j+1)=x11(j)+h*(k11+2*k21+2*k31+k41)/12;
    x21(j+1)=x21(j)+h*(k12+2*k22+2*k32+k42)/12;
    j=j+1;
end
err1(n)=abs(x1(n)-x11(j))*16/15;
err2(n)=abs(x2(n)-x21(j))*16/15;

end
plot(x,x1,x,x2)
end