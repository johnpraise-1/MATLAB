x=-pi:0.1:pi;
y=-pi:0.1:pi;
[X,Y]=meshgrid(x,y);
Z=sin(X).*cos(Y);
surf(X,Y,Z)
map=zero(256,3);
map(:,2)=(0:255)/255;

