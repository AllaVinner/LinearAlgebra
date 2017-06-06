function plotVector

 A=[-1 -1; 1 2];
 r=1/3*[-2; 1];
% u=A*x+1/3*[-2;1]
n=2;
x=zeros(2,n);
u=zeros(2,2);
x=1/3*([-2 1 ; -1 1]);
subplot(1,2,1);
plotv(x)

for I =[1:n]
    u(:,I)=A*(x(:,I)+r);
end
A*r;
subplot(1,2,2);
    x
    u
plotv(u)



