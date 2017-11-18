function [neTE] = Calcul_TE(n1, n2, n3, m, l, d)
%Calcul_TE Summary of this function goes here
%   Detailed explanation goes here
format long
f = @(X)n1^2 - (l / 2 / pi / d)^2 ...
    * (m * pi + atan(sqrt(X-n2^2)/sqrt(n1^2-X)) ...
    + atan(sqrt(X-n3^2)/sqrt(n1^2-X)))^2 ...
    - X;
neTE = fzero(f, [n2^2, n1^2]);
neTE = sqrt(neTE);

end

