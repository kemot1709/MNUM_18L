function [i,v] = qr_prz(A,n)

% A-macierz wejœciowa do rozk³adu QR
% n-wymiar macierzy
% Q-macierz Q rozk³adu QR
% R-macierz R rozk³adu QR
% v-wektor wartoœci w³asnych macierzy A
% b-œlad po podmacierzy 2x2 macierzy A
% c-wyznacznik podmacierzy 2x2 macierzy A
% d-delta równania l^2+bl+c=0
% x1,2 = pierwiastki równania l^2+bl+c=0
% e-wartoœæ pk
A
v=0;
k=n;
i=0;
while k>1
    while i<1000 & max(abs(A(k,1:k-1)))>0.00001
        b=-(A(k,k)+A(k-1,k-1));
        c=(A(k,k)*A(k-1,k-1))-(A(k,k-1)*A(k-1,k));
        d=b^2-4*c;
        x1=(-b-sqrt(d))/2;
        x2=(-b+sqrt(d))/2;
        if (x1-A(k,k)) < (x2-A(k,k))
            e = x1;
        else
            e = x2;
        end
        A=A-e*eye(k);
        [Q,R]=qr_moj(A,k);
        A = R*Q+e*eye(k)
        i=i+1;
    end
    v(k)=A(k,k);
    A = A(1:k-1,1:k-1);
k=k-1;
end
v(k)=A(k,k);
end



