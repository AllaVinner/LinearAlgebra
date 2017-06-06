function [v] = ortoprojection( A, B)
% Vector A is projected ortogonal on vector B;

v =(A*B')/norm(A)*A