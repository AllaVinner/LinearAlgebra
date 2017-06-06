function Map_view(A)

t=[0:0.01:2*pi];
X=[cos(t); sin(t)];
Y=zeros(size(X));

for u=[1:length(X)]
    Y(:,u)=A*X(:,u);
end
subplot(2,1,1);
plotv(X);
axis([-1 1 -1 1]);
subplot(2,1,2);
plotv(Y);