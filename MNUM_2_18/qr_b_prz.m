function [i,v] = qr_b_prz(A,n)

% A-macierz wejœciowa do rozk³adu QR
% n-wymiar macierzy
% Q-macierz Q rozk³adu QR
% R-macierz R rozk³adu QR
% v-wektor wartoœci w³asnych macierzy A 

i=0;
while i<=1000000
[Q,R]=qr_moj(A,n);
A =R*Q;
w=1;
j=1;
while j<=n %sprawdzanie warunku dok³adnoœci wyniku
    k=1;
    while k<n
        if j~=k
            if A(j,k)>0.00001
                w=0;
            end
        end
        k=k+1;
    end
    j=j+1;
end
if w==1
    k=1;
    while k<=n
        v(k)=A(k,k);
        k=k+1;
    end
    break
end
i=i+1;
end
end