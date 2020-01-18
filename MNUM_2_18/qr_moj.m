function [Q,R] = qr_moj(A,n)

% A-macierz wejœciowa do rozk³adu QR
% n-wymiar macierzy
% Q-macierz Q rozk³adu QR
% R-macierz R rozk³adu QR
% w-mno¿nik do normalizacji macierzy QR

j=1;
R=zeros(n);
while j<=n % rozk³ad qr macierzy A
    k=1;
    r=zeros(n,1);
    R(j,j)=1;
    while k<j
        R(k,j)=(Q(:,k)'*A(:,j))/(Q(:,k)'*Q(:,k));
        r(:,1)=r(:,1)+R(k,j)*Q(:,k);
        k=k+1;
    end
    Q(:,j)=A(:,j)-r(:,1);
    j=j+1;
end
j=1;
while j<=n % normalizacja macierzy qr
    w=0;
    k=1;
    while k<=n
        w=w+Q(k,j)^2;
        k=k+1;
    end
    w=sqrt(w);
    k=1;
    while k<=n
        Q(k,j)=Q(k,j)/w;
        R(j,k)=R(j,k)*w;
        k=k+1;
    end
    j=j+1;
end

end