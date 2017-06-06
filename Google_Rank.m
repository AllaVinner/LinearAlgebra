function [N, I]= Google_Rank(R)

n = size(R);
n= n(1,1); % Hittar dimensionen av matrisen

k=1;
v=[];
while k <= n % Skapar en vektor med f�rsta elementet = sum f�rsta kolon
v= [v;1/sum(R(:,k))];
k=k+1;
end;

A=R*diag(v) % Multiplicerar ihop in matrisen f�r att f� googles A matris
B= 1/n*ones(n,n);  % skapar googles B matris
C=0.85*A+0.15*B  % skapar Googles C matris
[V,D]=eig(C);      % Hittar egenvektorer
N=V(:,1);          % tar fram den f�rsta
[~,I]=sort(N);







