% Gransmith generator for any amount of dimensions

function A = Gran_Smith(V);

[m , n ] = size(V);

A = zeros(m , m);

A(:,1  ) = V(:, 1)/ norm (V(:, 1));



