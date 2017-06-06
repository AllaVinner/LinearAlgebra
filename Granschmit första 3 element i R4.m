function [ A ] = Gran schmit( u1, u2, u3 )
%Gran schmit: Gran schmit grejen för 3 element i R^4
%   Detailed explanation goes here
u1=[1/3^0.5 1/3^0.5 1/3^0.5 0];
u2=[-2/15^0.5 1/15^0.5 1/15^0.5 3/15^0.5];
u3=[5 -3 -1 1];
f1=1/(u1(1,1)^2+u1(1,2)^2+u1(1,3)^2+u1(1,4)^2)^0.5*u1;
u2opf1=(f1*u2')*f1;
u2okf1=u2-u2opf1;
f2=1/(u2okf1(1,1)^2+u2okf1(1,2)^2+u2okf1(1,3)^2+u2okf1(1,4)^2)^0.5*u2okf1;
u3opf1f2=(u3*f1')*f1+(u3*f2')*f2;
u3okf1f2=u3-u3opf1f2;
f3=1/(u3okf1f2(1,1)^2+u3okf1f2(1,2)^2+u3okf1f2(1,3)^2+u3okf1f2(1,4)^2)^0.5*u3okf1f2);

A=[f1' f2']

end

